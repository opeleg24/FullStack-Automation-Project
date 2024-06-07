import allure

import test_cases.conftest as conf


class DBActions:

    ####################################################################################################################
    # Function Name: update
    # Description: Update the values in the table,execute the query and commit the changes
    # values: columns, table_name, playoff_appearances, championships, record
    ####################################################################################################################

    @staticmethod
    @allure.step("Update to DB")
    def update(columns, table_name, playoff_appearances, championships, record):
        query = (f"UPDATE {table_name} SET {columns[0]} = {playoff_appearances}, {columns[1]} = {championships},"
                 f"{columns[2]} = '{record}' WHERE 1")
        conf.db_cursor.execute(query)
        conf.db_connector.commit()

    ####################################################################################################################
    # Function Name: get
    # Description: Get the values from the table,execute the query and return the result
    # values: columns, table_name, where_name, where_value
    ####################################################################################################################

    @staticmethod
    @allure.step("Get from DB")
    def get(columns, table_name, where_name, where_value):
        query = f"SELECT {', '.join(columns)} FROM `{table_name}` WHERE {where_name} = '{where_value}';"
        conf.db_cursor.execute(query)
        result = conf.db_cursor.fetchall()
        return result

    ####################################################################################################################
    # Function Name: insert
    # Description: Insert the values in the table,execute the query and commit the changes
    # values: table_name, values
    # keys: Player, Position, Height, Weight, BirthDate, Experience, College
    ####################################################################################################################

    @staticmethod
    @allure.step("Insert to DB")
    def insert(table_name, values):
        keys = {'Player': None, 'Position': None, 'Height': None,
                'Weight': None, 'BirthDate': None, 'Experience': None,
                'College': None}
        query = f"INSERT INTO {table_name} ({list(keys)[0]}, {list(keys)[1]},{list(keys)[2]},{list(keys)[3]},{list(keys)[4]},{list(keys)[5]},{list(keys)[6]})" \
                f"VALUES ('{values["player"]}', '{values["position"]}', '{values["height"]}', {values["weight"]}, '{values["birthDate"]}', {values["experience"]}, '{values["college"]}');"
        conf.db_cursor.execute(query)
        conf.db_connector.commit()

    ####################################################################################################################
    # Function Name: delete
    # Description: Delete the values from the table,execute the query and commit the changes
    # values: table_name, where_name, where_value
    ####################################################################################################################

    @staticmethod
    @allure.step("Delete from DB")
    def delete(table_name, where_name, where_value):
        query = f"DELETE FROM {table_name} WHERE {where_name} = '{where_value}';"
        conf.db_cursor.execute(query)
        conf.db_connector.commit()

    ####################################################################################################################
    # Function Name: get_top_record
    # Description: Get the top results from the table,execute the query and return the result
    # values: columns, table_name, limit_value
    ####################################################################################################################

    @staticmethod
    @allure.step("Get from DB top results")
    def get_top_record(columns, table_name, limit_value):
        query = f"SELECT {', '.join(columns)} FROM `{table_name}` ORDER BY {columns[1]} DESC LIMIT {limit_value};"
        conf.db_cursor.execute(query)
        result = conf.db_cursor.fetchall()
        return result
