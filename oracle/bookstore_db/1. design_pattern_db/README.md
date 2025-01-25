<a id="readme-top"></a>

# 1-Design Patter of Database

<!-- ABOUT THE PROJECT -->
### About The Project

This is a folder where you can find all you need to knwo about the a design schema of a database. In a case where everything could be done as per the book, the next steps should be the ones I will describe below:

## Main steps of database design

### Step 1. Entity - Relation Diagram

This diagram is made to detect which are the main tables that you will have in the database. Also in this scheme we will identify the bond between entities (tables) and the important attributes that we will find in each table.

- [x] Step 1.1. The first step is to think about the main table from which we start designing. The name of the table must be suggestive and must be a singular noun.
     - [ ] In this table, it is important to think about the main attributes that we will find in the table.
- [x] Step 1.2. After we have established the main attributes, then we have to think about which of these attributes will be repeated and it is not right from an optimization point of view to have the values ​​of these attributes as many times as possible in our main table.
     - [ ] Determine which are the attributes that will be repeated and create a separate table for them.
     - [ ] For these tables, create a list of significant attributes that we will find in the diagram.
- [x] Step 1.3. In addition to these tables, we should also think of a series of tables that we want to include in our scheme to be able to design our business model
     - [ ] In order to figure out which tables we should add, we should ask ourselves a series of business questions such as:
          - [x] What do we want to do with the main object in our database?
          - [x] When do we want to do this with our main object?
          - [x] How do we want to do this with our main object?
          - [ ] There is no problem if we add tables to the scheme along the way. We can always return to this scheme and add more elements as long as we make the changes in the next scheme as well.
- [x] Step 1.4. At this step we have tables that we will use and we want to see what are the relationships between these tables.
     - [ ] I will describe the process between two tables and the rest will be done exactly the same. If we consider the book and author table, then we can start to draw the relationships between the entities. These relationships are created based on a series of questions that we ask regarding the two tables that we have. There are 3 types of relationships that we can draw, namely One To One, One To Many and Many to Many. The sign of "One" is represented by a simple bar. The sign of "Many" is presented in many ways, but we will consider the "crow's foot" or "-<-" as the only sign that we will use at this moment. In theory, we have more type of notations. We can use "-<-" but can simply write above the bar M, M(1) or M(0) where this 1/0 represent the cardinality. In most cases, I have noticed that this notation is used to cross the middle of the bar with the verb you would use in the question you are about to ask. 
          - [x] Step 1.4.1. Can a book be written by one author (one author), several authors?
               - [ ] If a book can be written by several authors, then we will put the sign for "Many" next to the author table.
               - [ ] The thing related to the existence of a book that may not have any author gives us the cardinality. This tells us if it is possible in our model to have a book that does not have an author. In this case, we must put a bar next to the "Many" sign next to the table. If we put this bar then we have to realize that a book can have one or more authors, but not necessarily only one.
          - [x] Step 1.4.2. Can an author write a book (one book), several books? Can an author not write a book?          
               - [x] We have to ask the same questions in the opposite direction to be able to make the connection between the author table and the book.
          - [ ] After we have finished with these two tables, we must do the same for all the tables we have in the diagram depending on the connection we want to have between the entities.       
- [x] Step 1.5. At this step, we have to determine which are the primary keys for all the tables that we find in our scheme.
     - [x] The primary key represents the attribute that gives uniqueness to each record in our table. By uniqueness I mean the fact that this key cannot be NULL or be found on several records with the same value.
     - [x] After finishing this step, we can move on to the next scheme.
      
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Step 2. Conceptual Schema

In this diagram we will transform the relationships we have just defined in the scheme. Depending on the relationships that we will transform, we will also introduce foreign keys into the tables.

- [x] Step 2.1. The first thing we have to do is identify the 3 types of relationships we have from the previous diagram.
     - [ ] One To One
     - [ ] One To Many
     - [ ] Many To Many
- [x] Step 2.2. After we have identified the examples of relationships from each type, we should transform them. The main transformation consists in changing the "crow's foot" into an "X" next to the table where it is necessary and for the rest depending on the situation we will have to follow the situations below.
     - [x] One To One Relations
          - [ ] In the case of this relationship, we will do as follows. We need to add a foreign key to one of the tables. In this situation, the choice remains with us depending on what suits us more. In some situations, we can put it on the table with less columns.
          - [ ] After choosing which table to put the foreign key in, then we will add the column to the table.
          - [ ] After that we will change the "crow's foot" with an "X" ​​next to the table where we put the foreign key.
     - [x] One To Many Relations
          - [ ] In the case of this relationship, we will do as follows. We have to put the foreing key in the table that have the "crow's foot". 
          - [ ] After we put the foreign key column in table then we will have to change the "crow's foot" with an "X" ​​next to the table where we put the foreign key.   
     - [x] Many to Many Relations
          - [ ] In the case of this relationship, we will do as follows.We will have to create a table that we will call "associative table".
          - [ ] In this table we will include the primary keys of the two tables we linked. We will have to put one to many relations between the main tables and this associative table. I will also have to put a cross next to the "X" attached to the associative table.
          - [ ] This sign "X" no longer signifies cardinality, but represents the fact that the primary keys added to the associative table will also have to be foreign keys.
          - [ ] In this associative table you can also enter other attributes that may be significant for the moment when a record is created linked to the two tables in the database.
- [x] Step 2.3. After we have achieved this, we can move on to the next scheme.
          
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Step 3. The logical design of the database

In this diagram we will start from the relationship entity diagram. This diagram is similar to the conceptual diagram, only that it uses certain elements from the entity-relationship diagram.

- [x] Step 3.1. The first thing we have to do is identify the 3 types of relationships we have from the entity relation diagram.
     - [ ] One To One
     - [ ] One To Many
     - [ ] Many To Many
- [x] Step 3.2. After we have identified the examples of relationships from each type, we should transform them exactly as above. The main transformation consists in changing the "crow's foot" into an "->" next to the table where it is necessary and for the rest depending on the situation we will have to follow the situations below. If we have a foreign key then we put the "empty arrow" in the right where we have the foreign key. If the foreign key is also a primary key, then we will put the "filled arrow".
     - [x] We do not put foreign keys in their tables. We just put the arrows to the tables we need. Until this step in the tables we pass only the primary keys.
     - [x] We make the transformations we made earlier. At "One To One" we modify with the "empty arrow". At "One To Many", we put the arrow towards "Many" table. And with "Many To Many", we make the table and the primary keys and make the arrows next to the associative table to be filled. 
     - [x] I have described the different notations regarding the writing of the verb above the bar and the notation with M, M(0) or M(1) in the relationship entity diagram. In this case, I see that this notation was preserved with M(1) and the writing of the verb above the line.
     - [x] I have described the different notations regarding the writing of the verb above the bar and the notation with M, M(0) or M(1) in the relationship entity diagram. In this case, I see that this notation was preserved with M(1) and the writing of the verb above the line.
     - [ ] We will underline the primary key to figure out which of the columns it is.     
- [x] Step 3.3. At this step we check if we have singular attributes. To understand better, we will think about an attribute called "address". This "address" attribute will contain several elements that we will "break" into several columns. If certain columns of these will have values ​​that can be repeated excessively then we will consider the idea of ​​making another table where we will add these values ​​and we will add in our main table a foreign key to the primary key of this newly created table.
- [x] Step 3.4. Also here we have to make sure that our model is in all the normal forms that we will describe below.
     - [x] The first normal form
          - [x] A relationship is in the first normal form if each attribute that composes it corresponds to an indivisible (atomic) value. To understand better we can consider the example with the "address" column mentioned earlier. It is not right to leave in a table the primary key and a very long column with a lot of information in it. This information must be separated and placed on a different record that must be linked to the same primary key or make several columns.
     - [x] The second normal form
          - [x] A relation is in second normal form if and only if: a) the relation is in FN1 and b) every attribute that is not a key (does not participate in the primary key) is dependent on the entire primary key. We will consider an example below to understand better. Example of  that is not in Second Normal Form (2NF). Let’s consider a table called "Order" that is not in Second Normal Form (2NF). This table contains information about orders, products, and customers

| #OrderID  | #ProductID | ProductName | CustomerID | CustomerName  | Quantity | UnitPrice  |
|-----------|------------|-------------|------------|---------------|----------|------------|
| 1         | 101        | Laptop      | 201        | John Smith    |  2       | 3000       |
| 1         | 102        | Mouse       | 201        | John Smith    |  1       | 100        |     
| 2         | 103        | Keyboard    | 202        | Mary Johnson  |  2       | 200        |

The table does not comply with Second Normal Form (2NF) because the primary key is compose from 2 attributes (OrderID, ProductID).
Attributes `ProductName` and `UnitPrice` depend only on ``#ProductID``, and `CustomerName` depends only on ``#CustomerID``, not on the entire primary key (OrderID + ProductID).
The solution to solve this problem can be seen below

## Steps to Transform into 2NF

### 1. Identify functional dependencies:
   `ProductName` and `UnitPrice` depend only on `#ProductID`.
   `CustomerName` depends only on `CustomerID`.
   `Quantity` depends on the entire composite key (`OrderID`, `ProductID`).
### 2. Split the table into smaller tables: Create separate tables for entities with their own dependencies.
Important in this normal form is not to agglomerate a lot of information in a table, but divide the information between several tables. We can think of the tables we could make without thinking about the existence of this normal form.

`` [1] CUSTOMER TABLE `` (customer details)

| CustomerID | CustomerName | 
|------------|--------------|
| 201        | John Smith   |
| 202        | Mary Johnson | 

`` [2] PRODUCT TABLE `` (product details)

| ProductID  |	ProductName  |	UnitPrice | 
|------------|--------------|-----------|
| 101        | Laptop       |  3000     |
| 102        | Mouse        |  100      |         
| 103        | Keyboard     |  200      |

`` [3] ORDER TABLE `` (general order information)

| OrderID   | CustomerID | 
|-----------|------------|
| 1         | 201        |
| 1         | 202        |      

`` [4] ORDER - PRODUCT TABLE `` (relationship between orders and products)

| OrderID    |	ProductID    |	Quantity  | 
|------------|--------------|-----------|
| 1          | 101          |  2        |
| 1          | 102          |  1        |         
| 2          | 103          |  1        |

- [x] The third normal form
     - [x] A relation is in third normal form if and only if the relation is in FN2 and if every attribute that is not a key (does not participate in a key) depends on the key, on the whole key and only on the key. We will also use an example to highlight what the third normal form means. We will consider the ``SALES`` table

`` SALES TABLE `` (relationship between orders and products)

| #Item      |	Supplier     |	Phone Supplier   | Price   |
|------------|--------------|------------------|---------|
| XboxOne    | Microsoft    |  (800) +07443355 | 250     |
| PS4        | Sony         |  (800) +07557799 | 300     |        
| PSVita     | Sony         |  (800) +07557799 | 200     |

These 2 columns ``Supplier`` and ``Phone Supplier`` are dependent and this dependency could be optimized as follows.

`` ITEM TABLE `` (general informations about items)

| #Item      |	Supplier(FK) |	 Price   |
|------------|--------------|----------|
| XboxOne    | Microsoft    |  250     |
| PS4        | Sony         |  300     |        
| PSVita     | Sony         |  200     |

`` SUPPLIER TABLE `` (general information about suppliers)

|	Supplier  |  Phone Supplier  |   
|--------------|------------------|
| Microsoft    |  (800) +07443355 |
| Sony         |  (800) +07557799 |       



<p align="right">(<a href="#readme-top">back to top</a>)</p>




### Step 4. The physical design of the database

In this diagram we will transform the relationships we have just defined in the scheme. Depending on the relationships that we will transform, we will also introduce foreign keys into the tables.
         
<p align="right">(<a href="#readme-top">back to top</a>)</p>









<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

### Top contributors:

<a href="https://github.com/ProcopieGabi0112/1-Database-Design-Patterns/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=othneildrew/Best-README-Template" alt="contrib.rocks image" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the Unlicense License. See `LICENSE.txt` for more information.

<!-- CONTACT -->
## Contact

Procopie Gabi - procopiegabi@gmail.com

Project Link: 
[[https://github.com/ProcopieGabi0112/1-Database-Design-Patterns](https://github.com/ProcopieGabi0112/1-Database-Design-Patterns)]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Malven's Flexbox Cheatsheet](https://flexbox.malven.co/)
* [Malven's Grid Cheatsheet](https://grid.malven.co/)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
* [Font Awesome](https://fontawesome.com)
* [React Icons](https://react-icons.github.io/react-icons/search)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
