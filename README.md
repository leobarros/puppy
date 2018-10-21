# Puppy
Docker image for puppet agent


## Building the image Puppy
docker build -t puppy . <br/><br/>

## Running the container Puppy
docker run -it --name puppies puppy<br/><br/>

When you run the container puppies. You can test your code puppet.

## Testing your manifest with site.pp
puppet apply manifest/site.pp <br/><br/>

## Testing you modules
puppet apply manifest/site.pp --modulepath=modules/ <br/><br/>

!["Puppy"](http://cdn-www.dailypuppy.com/media/dogs/anonymous/11415/20090205138253_.jpg_w450.jpg)
