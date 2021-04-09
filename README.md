# Integrating GraphQL with ruby on rails

This project is a basic sekeleton of Author Library system. The application is built in ruby on rails and is using GRAPHQL for data manipulation. 

This project is Walk through application presented in [RubyConf Pakistan.](https://docs.google.com/presentation/d/1v1UWGiOIxk8cAbxddfLW3kEL7S02K46NdzZDTA2FuQw/edit?usp=sharing)


# Queries 
> **FETCH LIST OF AUTHORS WITH ALL DETAILS(BOOKS AND CHAPTERS)**

```
query{
  authors {
    id
    name
    bookCount
    books {
      name
      description
      chapters {
        name
        shortDescription
        authorName
      }
    }
  }
}

```

> **FETCH SINGLE AUTHOR**

```

query{
  author(id: 1) {
    id
    name
    bookCount
    books {
      name
      description
      chapters {
        name
        shortDescription
        authorName
      }
    }
  }
}


```
# Mutations

> **CREATE AUTHOR**

```
mutation{
  createAuthor(input: {
    name: "mehreen"
    email: "mehreentahir18@gmail.com"
  }){
    author {
      name
      id
    }
    errors
  }
}
```

> **UPDATE AUTHOR**
```
mutation{
  updateAuthor(input: {
    id: "1"
    name: "mehreen-abc"
  }){
    author {
      name
      id
    }
    errors
  }
}
```
