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
     - [ ] I will describe the process between two tables and the rest will be done exactly the same. If we consider the book and author table, then we can start to draw the relationships between the entities. These relationships are created based on a series of questions that we ask regarding the two tables that we have. There are 3 types of relationships that we can draw, namely One To One, One To Many and Many to Many. The sign of "One" is represented by a simple bar. The sign of "Many" is presented in many ways, but we will consider the "crow's foot" or "-<-" as the only sign that we will use at this moment.
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

### Step 1. Entity - Relation Diagram

This diagram is made to detect which are the main tables that you will have in the database. Also in this scheme we will identify the bond between entities (tables) and the important attributes that we will find in each table.

- [x] Step 1.1. The first step is to think about the main table from which we start designing
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
     - [ ] I will describe the process between two tables and the rest will be done exactly the same. If we consider the book and author table, then we can start to draw the relationships between the entities. These relationships are created based on a series of questions that we ask regarding the two tables that we have. There are 3 types of relationships that we can draw, namely One To One, One To Many and Many to Many. The sign of "One" is represented by a simple bar. The sign of "Many" is presented in many ways, but we will consider the "crow's foot" or "-<-" as the only sign that we will use at this moment.
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
