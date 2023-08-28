import { db_init, db_names, use_aws_ip } from "./globalConstants.js";
import dotenv from 'dotenv';
import mysql from "mysql2";
import { writeFile } from "fs/promises"

export default class Backup {
    static folder = "backups"

    static pool;

    static make_database_connection() {
        dotenv.config();

        Backup.pool = mysql.createPool({
            host: process.env.MYSQL_HOST,
            user: process.env.MYSQL_USER,
            password: process.env.MYSQL_PASSWORD,
            database: process.env.MYSQL_DATABASE
        }).promise();
    }

    static close_database_connection() {
        if (Backup.pool) {
            Backup.pool.end();
        }
    }

    static async make_empty_tables() {
        await Backup.run_sql(db_init);
    }

    static async run_sql(commands) {
        let curr_command = "";
        let for_type_purpose = [];
        let result = [...for_type_purpose];
        
        try{
            commands = commands.split(";");
            commands = commands.map( (command) => command.trim());
            for (let command of commands) {
                if (!command) continue;

                curr_command = command;
                let operation = command.split(" ")[0];
                let output = await Backup.pool.query(command);

                if (operation == "select") {
                    result = output[0];
                }
            }
        } catch (err) {
            if (!use_aws_ip) console.log("bad sql command: ", curr_command)
        }
        return result;
    }

    static async write_into_file(filename,content) {
        const filepath = `${Backup.folder}/${filename}_${Date.now()}.sql`;
        await writeFile(filepath, content);
    }

    static get_datetime(value) {
        const dateObject = new Date(value);

        // Format the date components
        const year = dateObject.getFullYear();
        const month = String(dateObject.getMonth() + 1).padStart(2, "0"); // Add 1 to month (0-based index)
        const day = String(dateObject.getDate()).padStart(2, "0");
        const hours = String(dateObject.getHours()).padStart(2, "0");
        const minutes = String(dateObject.getMinutes()).padStart(2, "0");
        const seconds = String(dateObject.getSeconds()).padStart(2, "0");

        return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
    }

    static async create_location_sql() {
        let sql = 
        `
insert ignore into ${db_names.locations_table} 
(
    ${db_names.locations_title_column},
    ${db_names.locations_latitude_column},
    ${db_names.locations_longitude_column},
    ${db_names.locations_radius_column},
    ${db_names.locations_id_column}
)
values
        `
        const locations = await Backup.run_sql(`select * from ${db_names.locations_table}`);

        for (let x of locations) {
            const row = 
            `\n(${x[db_names.locations_title_column]},${x[db_names.locations_latitude_column]},${x[db_names.locations_longitude_column]},${x[db_names.locations_radius_column]},'${x[db_names.locations_id_column]}'),`;
            sql += row;
        }

        sql = sql.slice(0, sql.length - 1) + ";"
        await Backup.write_into_file(db_names.locations_table,sql);
    }

    static async create_user_sql() {
        let sql = 
        `
insert ignore into ${db_names.users_table} 
(
    ${db_names.users_change_date_column},
    ${db_names.users_create_date_column},
    ${db_names.users_email_column},
    ${db_names.users_key_column},
    ${db_names.users_username_column}
)
values
        `
        const users = await Backup.run_sql(`select * from ${db_names.users_table}`);

        for (let x of users) {
            const create_time = Backup.get_datetime(x[db_names.users_create_date_column]);
            const change_time = Backup.get_datetime(x[db_names.users_change_date_column]);

            const row = 
            `\n('${change_time}','${create_time}','${x[db_names.users_email_column]}','${x[db_names.users_key_column]}','${x[db_names.users_username_column]}'),`;
            sql += row;
        }

        sql = sql.slice(0, sql.length - 1) + ";"
        await Backup.write_into_file(db_names.users_table,sql);
    }

    static async create_friend_sql() {
        let sql = 
        `
insert ignore into ${db_names.friends_table}
(
    ${db_names.friends_add_date_column},
    ${db_names.friends_receiver_email_column},
    ${db_names.friends_request_date_column},
    ${db_names.friends_requester_email_column},
    ${db_names.friends_status_column}
)
values
        `

        const friends = await Backup.run_sql(`select * from ${db_names.friends_table}`);

        for (let x of friends) {
            const request_time = Backup.get_datetime(x[db_names.friends_request_date_column]);
            const add_time = Backup.get_datetime(x[db_names.friends_add_date_column]);
            const row = 
            `\n('${add_time}','${x[db_names.friends_receiver_email_column]}','${request_time}','${x[db_names.friends_requester_email_column]}','${x[db_names.friends_status_column]}'),`;
            sql += row;
        }
       
        sql = sql.slice(0, sql.length - 1) + ";"
        await Backup.write_into_file(db_names.friends_table,sql);
    }

    static async create_notification_sql() {
        let sql = 
        `
insert ignore into ${db_names.notifications_table}
(
    ${db_names.notifications_date_column},
    ${db_names.notifications_email_column},
    ${db_names.notifications_highlighted_text_column},
    ${db_names.notifications_message_column},
    ${db_names.notifications_place_id_column}
)
values
        `

        const notifications = await Backup.run_sql(`select * from ${db_names.notifications_table}`);

        for (let x of notifications) {
            const time = Backup.get_datetime(x[db_names.notifications_date_column]);
            const row = 
            `\n('${time}','${x[db_names.notifications_email_column]}','${x[db_names.notifications_highlighted_text_column]}','${x[db_names.notifications_message_column]}','${x[db_names.notifications_place_id_column]}'),`;
            sql += row;
        }
       
        sql = sql.slice(0, sql.length - 1) + ";"
        await Backup.write_into_file(db_names.notifications_table,sql);
    }

    static async make_backup() {
        await Backup.create_location_sql();
        await Backup.create_user_sql();
        await Backup.create_friend_sql();
        await Backup.create_notification_sql();
    }
}

const main = async () => {
    Backup.make_database_connection();
    await Backup.make_backup();
    Backup.close_database_connection();
}

main();