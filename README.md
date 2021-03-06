# Object Relations Code Challenge

For this assignment, you will be creating a domain to track contributions that authors make to magazines. For our purposes, an `Author` has many `Article`s, a `Magazine` has many `Article`s, and `Article`s belong to both `Author` and `Magazine`.

_Note:_ It can be incredibly helpful to draw out what your domain will look like before you start coding. If you are not sketching out your domain, and thinking about single source of truth, you are doing it wrong :(

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed below in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

**Remember!** This is a code challenge without tests. You cannot run `rspec` you cannot run `learn`. You'll need to create your own sample instances for testing purposes. Make sure your associations and methods work in the console before submitting.

## Deliverables

The below are the methods that must be present on your models. Feel free to build out any helper methods if needed.

### Basic Class Methods and Properties

#### Build the following methods on the `Author` class

An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.

+ `Author#name`
  + Returns the name of the author as a string
+ `Author.all`
  + Returns an array of all Author instances
+ `Author.most_verbose`
  + Returns the Author instance who has the longest article by word count

---

#### Build the following methods on the `Article` class

An article is initialized with an author as an Author object, a magazine as a Magazine object, title as a string, and content as a string. An article **cannot** change its author or magazine after it is has been initialized.

+ `Article.all`
  + Returns an array of all Article instances
+ `Article#author`
  + Returns the author for that given article
+ `Article#magazine`
  + Returns the magazine for that given article
+ `Article#title`
  + Returns the title for that given article
+ `Article#content`
  + Returns the content for that given article

---

#### Build the following methods on the `Magazine` class

A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.

+ `Magazine#name`
  + Returns the name of this magazine
+ `Magazine#category`
  + Returns the category of this magazine
+ `Magazine.all`
  + Returns an array of all Magazine instances
+ `Magazine.find_by_name(name)`
  + Given a string of magazine's name, this method returns the first magazine object that matches

---

### Associations and Aggregate Methods

#### `Author`

+ `Author#add_article(magazine, title, content)`
  + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
+ `Author#articles`
  + Returns an array of Article instances the author has written
+ `Author#magazines`
  + Returns a **unique** array of Magazine instances for which the author has contributed to
+ `Author#show_specialties`
  + Returns a **unique** array of categories of the magazines for which the author has contributed to
+ `Author.most_active`
  + Returns the Author instance who has written the greatest number of articles

#### `Magazine`

+ `Magazine#article_titles`
  + Returns an array of the titles of all articles written for that magazine
+ `Magazine#contributors`
  + Returns an array of Author instances who have written for this magazine
+ `Magazine#word_count`
  + Returns a number that is the total number of words for all of the articles in this magazine
