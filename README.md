# collect-adoba

### Clone the repository

```shell
git clone https://github.com/MarcoDuv/collect-adoba.git
```
## 1) Install and Run the API (Rails on ruby)

Go to api folder
```shell
cd .\lakaa_api\
```
### Check your Ruby version

```shell
ruby -v
```
The project was made with version `3.1.3p185`

If you have not such a version, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```
### Initialize the database

```shell
rails db:create db:migrate
```
## Run the server

```shell
rails s
```

## 2) Install and Run frontend (vue-typescript)
### Requires Node.js v16.0 or higher

In a new Terminal go to front-end folder
```shell
cd .\lakaa_frontend\
```
### Check your Vue version

```shell
npm vue -v
```

The project was made under the version 8.15.0

### Run the server (in dev mode)
```shell
npm run dev
```

You should see in the Terminal something like:
```
> lakaa_frontend@0.0.0 dev
> vite


  VITE v3.2.4  ready in 1530 ms

  ➜  Local:   http://local:host/
  ➜  Network: use --host to expos
```

You can now connect to the application by clicking on the link with ctrl command or copy-past it in your navigator

# About

## Choices
The choice was made to do a home page with only 2 buttons redirecting the user to "magasin" and "Responsable RSE" pages. That was in case I had time to add some graphics and maybe new features on the
main page. For now, I wanted to achieve something functional that's why I did something basic. 
Then on each page you can find again the simplest graphics. 
The first idea was to create the basic functionalities (fundamental ones) and not spending a lot of time on the graphics. 
I knew a bit of html and css so I wanted to spend more time on the backend that was more difficult for me. 
And that's for this reason I didn't finish every feature required. I didn't have the time to implement what it is presented in the improvement part. 
For the creation of a Collect, I chose to do a popup. It makes the user understand that he is creating an object. 
By doing this we also understand that, while the popup is here, no object is created and we still need to do something. 
In this form we checked the inputs BEFORE sending a BDD request (better for error handler and security). 
For the shape of the store page I just inspired myself by the existing site of lakaa. And on the side of the Collect list, once again, 
I did something really simple with only the attributes quoted in the test instruction.


## Possible improvements
The next step is to add the possibility for the user to add new indicators for the collects. We want to change the shape of the Collect object and add to the properties
an attribute "Indicators{name: string, value: string}". Then the use will be able to add every indicator he wants. 
We will need then to change the form to create a new Collect and add a button to add more indicators with the choice of the name of it.
There is also a lot of work to do on the style of the UI which is not really pleasant to watch and could be more user-friendly.
One last thing that I thought was to refract my code, I didn't work on this part and also check the code repetition and its readability





