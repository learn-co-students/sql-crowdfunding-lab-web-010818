# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
  "SELECT projects.title,(SELECT SUM(pledges.amount))
  FROM projects
  INNER JOIN pledges ON projects.id = pledges.project_id
  GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, (SELECT SUM(pledges.amount))
  AS pledge_amount
  FROM users
  INNER JOIN pledges ON users.id = pledges.user_ID
  GROUP BY users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT projects.title,( (SELECT SUM(pledges.amount)) - projects.funding_goal)
  FROM projects
  INNER JOIN pledges ON projects.id = pledges.project_id
  GROUP BY projects.title
  HAVING SUM (pledges.amount) >= projects.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
  "SELECT users.name,(SELECT SUM(pledges.amount))
  FROM users
  INNER JOIN pledges ON users.id = pledges.user_id
  GROUP BY users.name
  ORDER BY (SELECT SUM(pledges.amount));"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT projects.category, pledges.amount
  FROM projects
  INNER JOIN pledges ON projects.id = pledges.project_id
  WHERE category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT projects.category,(SELECT SUM(pledges.amount))
  FROM projects
  INNER JOIN pledges ON projects.id = pledges.project_id
  GROUP BY category
  HAVING category = 'books'"
end

#PROJECTS
# ID          TITLE                 CATEGORY    FUNDING_GOAL  START_DATE  END_DATE
# ----------  --------------------  ----------  ------------  ----------  ----------
# 1           Help me buy a guitar  music       500           2013-06-30  2013-07-30
# 2           My book on SQL        books       20            2013-01-01  2014-01-01
# 3           The next Harry Potte  books       1000          2013-05-30  2015-05-30
# 4           Animal shelter needs  charity     400           2013-03-14  2013-06-30
# 5           Voldement needs a bo  charity     6000          2013-03-20  2013-09-20
# 6           The next Inna-Gadda-  music       200           2014-12-30  2015-12-30
# 7           Iguana needs tail op  charity     2000          2013-10-02  2013-10-30
# 8           I have bed bugs!      charity     800           2014-06-30  2014-06-31
# 9           I want to teach Engl  charity     3000          2013-06-30  2013-09-30
# 10          Help save birds of p  charity     5000          2012-03-20  2013-06-30


#USERS
# ID          NAME        AGE
# ----------  ----------  ----------
# 1           Finnebar    17
# 2           Bear        6
# 3           Iguana      4
# 4           Alex        33
# 5           Amanda      24
# 6           Sophie      24
# 7           Rosey       9
# 8           Victoria    23
# 9           Franz       100
# 10          Hermione    30
# 11          Voldemort   90
# 12          Marisa      24
# 13          Swizzle     4
# 14          Sirius      36
# 15          Albus       113
# 16          Squid       5
# 17          Whale       6
# 18          Pacha       5
# 19          Ena         24
# 20          Katie       24


#PLEDGES
# ID          AMOUNT      USER_ID     PROJECT_ID
# ----------  ----------  ----------  ----------
# 1           10          1           2
# 2           20          1           3
# 3           40          1           4
# 4           50          2           3
# 5           10          3           2
# 6           20          4           4
# 7           40          5           10
# 8           60          6           10
# 9           50          7           9
# 10          700         8           8
# 11          1000        8           7
# 12          40          9           6
# 13          50          9           3
# 14          50          10          4
# 15          24          12          1
# 16          34          11          1
# 17          12          13          6
# 18          19          14          5
# 19          20          15          5
# 20          40          16          6
# 21          35.5        17          7
# 22          40          18          8
# 23          60          19          9
# 24          70          20          10
# 25          100         20          4
# 26          40          19          1
# 27          20          18          6
# 28          90          17          9
# 29          230         16          6
# 30          450         15          5
