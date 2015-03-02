CREATE DATABASE EXAMWORLD
USE EXAMWORLD
CREATE TABLE NAME (NAME VARCHAR(50),ID VARCHAR(30) PRIMARY KEY,PASS VARCHAR(30),EMAIL VARCHAR(50),DOB VARCHAR(20),EDU VARCHAR(15),Q VARCHAR(100),A VARCHAR(100))
select * from NAME
insert NAME VALUES ('soham','soham','abcd','abc@gmail.com','1/11/1991','B.Tech','qbc','pqr')
delete DATA
drop table DATA
select max(POINT) from DATA
SELECT * FROM DATA
CREATE TABLE DATA (ID VARCHAR(30) REFERENCES NAME PRIMARY KEY,TOTAL FLOAT,TRUE FLOAT,POINT FLOAT);
INSERT DATA VALUES ('soham',0,0,0)
CREATE TABLE PPLQ (QNO INT PRIMARY KEY,Q VARCHAR(200),A1 VARCHAR(200),A2 VARCHAR(200),A3 VARCHAR(200),A4 VARCHAR(200),ANS VARCHAR(200)) 
CREATE TABLE ALGOQ (QNO INT PRIMARY KEY,Q VARCHAR(200),A1 VARCHAR(200),A2 VARCHAR(200),A3 VARCHAR(200),A4 VARCHAR(200),ANS VARCHAR(200)) 
CREATE TABLE DSQ (QNO INT PRIMARY KEY,Q VARCHAR(200),A1 VARCHAR(200),A2 VARCHAR(200),A3 VARCHAR(200),A4 VARCHAR(200),ANS VARCHAR(200)) 
CREATE TABLE OSQ (QNO INT PRIMARY KEY,Q VARCHAR(200),A1 VARCHAR(200),A2 VARCHAR(200),A3 VARCHAR(200),A4 VARCHAR(200),ANS VARCHAR(200)) 
CREATE TABLE DBMSQ (QNO INT PRIMARY KEY,Q VARCHAR(200),A1 VARCHAR(200),A2 VARCHAR(200),A3 VARCHAR(200),A4 VARCHAR(200),ANS VARCHAR(200)) 
SELECT * FROM PPLQ
SELECT * FROM DBMSQ
DROP TABLE PPLQ
DROP TABLE DBMSQ
DROP TABLE DSQ
DROP TABLE OSQ
DROP TABLE ALGOQ
INSERT PPLQ VALUES (1,'Q5','A1','A2','A3','A4','A1')
INSERT PPLQ VALUES (2,'Q6','A1','A2','A3','A4','A1')
INSERT PPLQ VALUES (3,'Q7','A1','A2','A3','A4','A1')
INSERT PPLQ VALUES (4,'Q8','A1','A2','A3','A4','A1')
INSERT PPLQ VALUES (5,'Q9','A1','A2','A3','A4','A1')
INSERT PPLQ VALUES (6,'Q10','A1','A2','A3','A4','A1')
INSERT PPLQ VALUES (7,'Q11','A1','A2','A3','A4','A1')
UPDATE DATA SET TOTAL=0 WHERE ID='soham'
DELETE PPLQ
DELETE DSQ
DELETE OSQ
DELETE ALGOQ
DELETE DBMSQ
DROP TABLE DBMSQ
DROP TABLE OSQ
DROP TABLE ALGOQ
DROP TABLE DSQ
DROP TABLE PPLQ
INSERT DBMSQ VALUES (1,'An owner member set in the CODASYL Specification may have','only one owner but many owner occurrences','only one member but many member occurrences','more than one member but not only one occurrence per member','all of these','only one owner but many owner occurrences')
INSERT DBMSQ VALUES (2,'A record in third normal form is better than a record to first normal form a relational mathematics viewpoint','true','false','','','true')
INSERT DBMSQ VALUES (3,'Updating a database means','revising the file structures','recognizing the database','modifying or adding record occurrence','all of this','all of this')
INSERT DBMSQ VALUES (4,'One of data dictionary software package is called','DB/DC dictionary','TOTAL','ACCESS','all of these','all of these')
INSERT DBMSQ VALUES (5,'A list consists of last names,first names,addresses and pin codes.If all people in the list have the same last and same pin code a useful key would be','pin code','last name','compound key consisting of the first name and the last name','all ot these','compound key consisting of the first name and the last name')
INSERT DBMSQ VALUES (6,'An indexing operation','sorts afile using a single key','sorts a file using two keys','establish an index for a file','both(b)and(c)','establish an index for a file')
INSERT DBMSQ VALUES (7,'The master list of an indexed file','is sorted in ascending order','contains only a list of keys and record numbers','has anumber assigned to each record','both(a) and (b)','both (a) and (b)')
INSERT DBMSQ VALUES (8,'Index consists of ','a list of keys','pointers to the master list','both (a) and (b)','none of these','pointers to the master list')
INSERT DBMSQ VALUES (9,'To have afile hold alist,it is necessary to','identify the records in the list','identify the name,width and type of the fields of each record','decide which fields will be used as sort or index keys','all of these','all of these')
INSERT DBMSQ VALUES (10,'If a numeric field has a width of 5.2,then the value of the field would be','23.10','121.8','143.87','both (a) and (b)','23.10')
INSERT DBMSQ VALUES (11,'Primitive operations common to all record management systems include','print','sort','look up','all of these','lookup')
INSERT DBMSQ VALUES (12,'Sort/Report generators','are vfaster than index/report generators','require more disk space than index/report generators','do not need a sort before generating report','both (a) and (b)','require more disk space than index/report generators')
INSERT DBMSQ VALUES (13,'A report Form','appears on the computer monitor during data entry','is used during refort generation to mformat data','none of these','both (a)and (b)','both (a) and (b)')
INSERT DBMSQ VALUES (14,'a form defines ','where data is placed on the screen','the width of each field','both (a) and (b)','none of these','both (a) and (b)')
INSERT DBMSQ VALUES (15,'the designer of aform includes ','field designators','prompts','data','both (a) and (b)','both (a) and (b)')

INSERT DBMSQ VALUES (17,'Given relation r(w,x) and s (y,z), the result of select distinct w,x
      from r,s
       is guaranteed to be the same as r,provided:
','r has no duplicates and s is non-empty','r and s have no duplicates','s has has no duplicates and s is non empty','r and s have the same no of tuples','r has no dupliates and s is non-empty')
INSERT DBMSQ VALUES (18,'In SQL,relation can contain null values,and comparisions with null values are treated as unknown suppose all comparisons with a null value are treated as false','x=5 not (not(x=5))','x=5 x>a and x<6,where x is an integer','x!=5 not (x=5)','none of these','x!=5 not (x=5)')
INSERT DBMSQ VALUES (19,'The SQL expression
      Select distinct T. branchname from branch T, branch S where T.assets>S.asseta and S.branchcity="TENALI"
      finds the name of
','all branches that have greater assets than some branches located in TENALI','all branches that have greater assets than all branches located in TENALI ','the branch that has the greatest asset in TENALI','any branch that has greater asset than any branch located in TENALI','all branches that have greater assets than some branches located in TENALI')
INSERT DBMSQ VALUES (20,'let R=(A,B,C,D,E,F)be a relation scheme with the following dependencies:
     C->F,E->a,EC->D,A->B
     Which of the following is a key for R?
','CD','EC','AE','AC','EC')
INSERT DBMSQ VALUES (21,'Which normal form is considered adequqte for normal relationship database design??','2NF','3NF','4NF','5NF','2NF')
INSERT DBMSQ VALUES (22,'Given the functional dependencies.
     x->w; x->y; y->z and z->pq;
     Which of the following does not hold good? 
','x->z','w->z','x->wy','none','x->wy')
INSERT DBMSQ VALUES (23,'if a relation scheme is in BCNF,then it is also in','1NF','2NF','3NF','none of these','3NF')
INSERT DBMSQ VALUES (24,'Any Binary relation is in','1NF','2NF','3NF','BCNF','BCNF')
INSERT DBMSQ VALUES (25,'Normalization of database us used to','eliminate redundancy','improve security','improve efficieny','minimize errors','eliminates redundancy')
INSERT OSQ VALUES (26,'The volatility of afile refers to','The no of records added or deleted from a file composed to the original no of records in that file','efficiency with which non sequencial files are processed','the extene where the records of the file are contigious and in proximity to others','percentage of records that have changed in a given time period','The no of records added or deleted from a file composed to the original no of records in that file')
INSERT OSQ VALUES (27,'Which types of file organization are supported by magnetic tape?','random files','contigious sequential file','indexed sequential file','all of these','contigious sequential file')
INSERT OSQ VALUES (28,'A file is','an abstract data type','logical storage unit','file is usually non volatile','all of these','all of these')
INSERT OSQ VALUES (29,'Number of minimal set of required file operations are','2','4','5','6','6')
INSERT OSQ VALUES (30,'How many common file type are there?','1','6','5','2','1')
INSERT OSQ VALUES (31,'System supports how many types of files?','1','2','3','4','2')
INSERT OSQ VALUES (32,'System supports two types of files,which are','text files','executable binary files','both (a) and (b)','none','both (a) and (b)')
INSERT OSQ VALUES (33,'The simplest directory structure is ','single level','two level','tree structure','none','single level')
INSERT OSQ VALUES (34,'Disadvantage of single level directory is','the confusion of files data','both (a) and (b)','none','the confusion of files names beetween different users')
INSERT OSQ VALUES (35,'solution of name collision problem is','single level directory','two level directory','tree structure','all of these','two level directory')
INSERT OSQ VALUES (36,'Path"s name are','absolute path','relative path','both (a) and (b)','none','both (a) and (b)')
INSERT OSQ VALUES (37,'Which structure prohobits the sharing of files and directories??','tree structure','one level structure','two level structyre','none','tree structure')
INSERT OSQ VALUES (38,'Shared sub directories and files are example of ','a cyclic graph directory','tree structured direction','one level directory','none','a cyclic grpah directory')
INSERT OSQ VALUES (39,'There are no cycle in which typpe of directory?','General graph','A cyclic graph','One level','Two level','A cyclic graph')
INSERT OSQ VALUES (40,'The lowest kevel of I/O control consists of','device drivers','interrupt handlers','both (a) and (b)','none','both (a) and (b)')
INSERT OSQ VALUES (41,'Which type of design problem in the file system?','How the file system should took to the user','Algorithm and data structure must be created to map mthe logical file system onto the secondary storage device','both (a) and (b)','none','both (a) and (b)')
INSERT OSQ VALUES (42,'In MS-DOS, relocatable object files and load modules have extensions','.OBJ and .COM or .EXE respectively','.COM and .OBJ respectively','.EXE and .OBJ respectively','.DAS and .EXE respectively','.OBJ and .COM or .EXE respectively')
INSERT OSQ VALUES (43,'A file soetimes called a','collection of input data','data set','temporary place to store data','program','data set')
INSERT ALGOQ VALUES (44,'If n element to be sorted,then worst case time complexity of Bubble sort is','O(1)','O(log n)','O(n)','O(n^2)','O(n^2)')
INSERT ALGOQ VALUES (45,'If n element to be sorted,then worst case time complexity of Shell sort is','O(n)','O(n log n)','O(n^1.2)','O(n^2)','O(n^1.2)')
INSERT ALGOQ VALUES (46,'If n element to be sorted,then worst case time complexity of Straight insertion sort is','O(n)','O(n log n)','O(n^1.2)','o(n^2)','o(n^2)')
INSERT ALGOQ VALUES (47,'Consider an undirected graph G with n vertices and e edges.What is the time taken by DFS if the graph is represented by Adjacency matrix,and Adjacency list respectively??','O(n^2),O(n)','O(n^2),O(e)','O(e),O(n^2)','O(e+n),O(e)','O(n^2),O(e)')
INSERT ALGOQ VALUES (48,'The recurrence relation T(n)=mT(n/2)+an^2 is satisfied by','T(n)=O(n^m)','T(n)=O(n log m)','T(n)=O(n log m)','T(n)=O(m log n)','T(n)=O(n log m)')
INSERT ALGOQ VALUES (49,'The time required to find shortest path in a graph with n vertices and n edges is','O(e)','O(n)','O(e^2)','O(n^2)','O(n^2)')
INSERT ALGOQ VALUES (50,'The goal of hasing is to produce a search that takes','O(1)time','O(n^2)times','O(log n) time','O(n log n )time','O(n log n )time')
INSERT ALGOQ VALUES (51,'In which of the following straight algorithm the no of comparisons needed is the minimum if the items are initially in reverse order and is the maximum if the items are in order??','strqaight insretion sort','bimary insertion sort','Heap sort','Bubble sort','bimary insertion sort')
INSERT ALGOQ VALUES (52,'A search procedure which associates an address with akey value and provides amechanism for dealing with two or more values assigned to the same address is called','linear search','binary search','hash coded search','radix search','hash coded search')
INSERT ALGOQ VALUES (53,'The border of magnitude of the worst case performance of ahash coded search(over N elements)is','N','N logN','log N','not dependent upon N','not dependent upon N')
INSERT ALGOQ VALUES (54,'Which of the following algorithm has a worst case running time of O(n^2) where 1<r<2??','Bubble sort','Insertion sort','Shell sort','Merge sort','Shell sort')
INSERT ALGOQ VALUES (55,'Let a be sorted array of n=10 elements. Assume that only one comparison is required to ,determine whether the target is equal to,less than or greater than A[i]. Which of the following denotes the avg. successful time of finding an arbitary element x in a using binary search?','1.6','2.9','4.2','5.5','2.9')
INSERT ALGOQ VALUES (56,'A digital search key is implemented as a tree with n nodes each of which can contain m pointars,corresponding to the m possible symbols in each position of the key.The no of nodes that must be accessed to find a particular tree is','m','n','n^m','m^n','m')
INSERT ALGOQ VALUES (57,'A search technique where we keep expanding nodes with least occumulated cost so far is called','Hill climbing','Branch and bound','Best first','Divide and conquer','Branch and bound')
INSERT ALGOQ VALUES (58,'Which of the following algorithm operates in quadretic time relative to the number of elements in the array(on the avarage)??','Quick sot','Heap sort','Bubble sort','Radix sort','Bubble sort')
INSERT DSQ VALUES (59,'If each node in a tree has value greater than every value in its left subtree and has value less than every value in its right subtree,the tree is called','complete tree','full binary tree','Binary search tree','threaded tree','Binary search tree')
INSERT DSQ VALUES (60,'Which of the following sorting procedure is the slowest??','Quick','Heap','Shell','Bubble','Bubble')
INSERT DSQ VALUES (61,'Which of the following is atabular listing of contents of certain registers and memory locations at different times during the execution of a program?','Loop program','Program trace','Subroutine program','Byte sorting program','Program trace')
INSERT DSQ VALUES (62,'How many value can be held by an array A(-1....m, 1.....m)?','m','m^2','m(m+1)','m(m+2)','m(m+2)')
INSERT DSQ VALUES (63,'Which of the following statement is false?','every tree is a bipartite tree','a tree contains a cycle','a tree with n nodes contains (n-1) edges','a tree is a connected graph','a tree contains a cycle')
INSERT DSQ VALUES (64,'which of the following sorting method is stable?','straight insertion sort','Binary insertion sort','Shell sort','heap sort','straight insertion sort')
INSERT DSQ VALUES (65,'a complete binary tree with the property that the value at each node is at least as large as the values at its children is called','binary search tree','Avl tree','completely balanced tree','Heap','Heap')
INSERT DSQ VALUES (66,'Which nof the following best describe sorting?','Accessing and processing records exactly once','Finding location of record with a given key','Arranging the data in some given order','Adding a new record to the data structure','Arranging the data in some given order')
INSERT DSQ VALUES (67,'When key values are reals a similar data representation might be produced by using a hashing function with','mob','div','trunc','log N','trunc')
INSERT DSQ VALUES (68,'A characteristic of the data that binary search uses but the linear search ignores is','order of the list','length of the list','max value in the list','mean of adata values','order of the list')
INSERT DSQ VALUES (69,'A sort which compares adjacent elements in a list and switches where necessary is ','insertion','heap','quick','bubble','bubble')
INSERT DSQ VALUES (70,'A sort which iteratively passes through a list to exchange the first element with any element less than it and then repeats with anew first element is called','insertion','selection','heap','quick','selection')
INSERT DSQ VALUES (71,'A full binary tree with n leaves contains','n nodes','log n nodes','2n-1 nodes','2^n nodes','2n-1 nodes')
INSERT DSQ VALUES (72,'A full binary tree with n non-leaf nodes contains','log n nodes','n+1 nodes','2n nodes','2n+1 nodes','2n-1 nodes')
INSERT DSQ VALUES (73,'A sort which uses the binary tree concept such that any number is larger than all the numbers in the subtree below it is called','selection sort','insertion sort','heap sort','quick sort','heap sort')
INSERT PPLQ VALUES (74,'A declaration "short int"is used for variables','which have a short duration in aprogram','which have short names','which may require less storage than normal integers','all of this','which may require less storage than normal integers')
INSERT PPLQ VALUES (75,'in case of ordinary integer variables','leftmost bit is reserved for sign','rightmost bit is reserved for sign','no bit is reserved for sign','none','leftmost bit is reserved for sign')
INSERT PPLQ VALUES (76,'What would be the value of i and k??
                 {
                  int i,j,k
		j=5
		i=2*j/2;
		k=2*(j/2);
	}
','i=5,k=5','i=4.k=4','i=5,k=4','i=4,k=5','i=5,k=4')
INSERT PPLQ VALUES (77,'If ASCII value of x is 120,what is the value of i=(x-w)/3??','1','2','0','4','0')
INSERT PPLQ VALUES (78,'How many times will the following loop be executed?
	{
		x=5
		if(x=1){
		     x++;
	}
','never','once','5 times','Infinitely many times','Infinitely many times')
INSERT PPLQ VALUES (79,'If an int occupies 4 bytes and a character occupies 1 byte of memory ,each element of the following structure would occupy how many bites?
 		struct name{
		int age;
		char name[20];
		}
','5','24','21','22','24')
INSERT PPLQ VALUES (80,'A short int occupies 2 bytes,an ordinary int 4 bytes and a long int 8 bytes of memory. A structure is defined as
		struct TAB
		short a;
		int b;
		long c;
		}TABLE[10];
Then the total memory requirment for TABLE is
','14','140','40','24','24')
INSERT PPLQ VALUES (81,'The library function sqrt operates on a double precision argument. If, i is an int variable,which one of the following calls would correctly compute sqrt(i)?','sqrt((double)i)','(double)sqrt(i)','(double)(sqrt(i))','sqrt(i)','sqrt((double)i)')
INSERT PPLQ VALUES (82,'If a=-11 and b=-3, what is the value of a%b?','-3','-2','2','3','3')
INSERT PPLQ VALUES (83,'Suppose i,j,k are int variable with values 1,2,3 respectively. What is the value of the expression?
 		!((j+k)>(i+5))?
','6','5','1','0','1')
INSERT PPLQ VALUES (84,'suppose i=7,f=5.5 and c=W.What is the value of the expression:
		(c!=p||i+f<=10)?
','1','0','-1','not defined','1')
INSERT PPLQ VALUES (85,'If ASCII code of 0 is 48.What is the value of toascii(2)?','48','2','0','50','50')
INSERT PPLQ VALUES (86,'The function is lower(char)checks whether a char is in lower case or not. Therefore it should return','0 or 1','-1,0 or 1','a charactar','nothing','0 or 1')
INSERT PPLQ VALUES (87,'if S is an array of 80 char, fhen the value assigned to S through the statement scanf("%d",S) with input 12345 would be','12345','nothing since 12345 is an int','S is a illigal name of a string','%s cant be used for reading in values of S','12345')
INSERT PPLQ VALUES (88,'Printing a char as an int','results in the printing of a negetive integer','always prints apositive int','prints a value that is implementation dependent','none','prints a value that is implementation dependent')
INSERT PPLQ VALUES (89,'The  operators, ||,<,= if arranged in the ascending otrder of precedence reads','.,||.<,=','=,<,||,.','=,||,<,.','<,||,=,.','=,||,<,.')
INSERT PPLQ VALUES (90,'When a variable data type double is converted into float','rounding takes place','truncation takes place','the lower order bits ars dropped','none','rounding takes place')
INSERT PPLQ VALUES (91,'The expression 5-2-3*5-2 will evaluated to 18,if -i left associative and ','*has precedence over -','* has precedence over -','- has precedence over *','- has precedence over *','- has precedence over *')
INSERT PPLQ VALUES (92,'The program fragment
		int i=263;
		putchar(i);
','prints 263','prints the ASCII equivalent of 263','rings the bell','prints garbage','rings the bell')
INSERT PPLQ VALUES (93,'The following statement
		printf("%f",9/5)
		prints
','1.8','1.0','2.0','none of these','2.0')
INSERT PPLQ VALUES (94,'The following program fragment
		int k=-7;
		printf("%d",0,1K0;
','prints 0','prints a non zero value','is illigal','prints an unpredictable value','prints 0')
INSERT PPLQ VALUES (95,'Consider the following program fragment
		if(a>b)printf("a>b")
		else printf("else part");
	          printf("a<=b")
a<=b will be printed if
','a>b','a<b','a=b','all of these','all of these')
INSERT PPLQ VALUES (96,'The body of the following for loop 
		for(putchar(a);putchar(0);putchar(c))
		putchar("b");
','0 times','1 time','infinitely many times','none of these','0 times')




