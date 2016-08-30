
# ll for every directory 
for i in *; do ll $i; done

# execute sql query on every jenkins slave db (dummy, not working example):
for i in {1..5}; do mysql -h slave00$i test_db -u user < script.sql; done
