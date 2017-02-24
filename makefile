all:	first

first:
	ls

rxnorm:	RXNCONSO.RRF RXNREL.RRF RXNSAT.RRF sql
	#mysql -u root -p rxnorm < sql/Table_scripts_mysql_rxn.sql
	#mysql --local-infile -u root -p rxnorm < sql/Load_scripts_mysql_rxn_unix.sql
	#mysql -u root -p rxnorm < sql/Indexes_mysql_rxn.sql
	mysql -u root -p test < sql/Table_scripts_mysql_rxn.sql
	mysql --local-infile -u root -p test < sql/Load_scripts_mysql_rxn_unix.sql
	mysql -u root -p test < sql/Indexes_mysql_rxn.sql

