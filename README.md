# backdoored-container
The purpose of this repository is to show a simple backdoored container and how easy is it to backdoor any container on the internet. It is a wordpress container that runs normally but in the xmlrpc.php file there is a simple malicious line of code.
![image](https://github.com/diego-tella/backdoored-container/assets/70545257/1bddb3bd-f9fe-49a5-aeab-24f861194969)


Building the image:
```
$ docker build -t backdoorwp .
```

Initializing:
```
$ docker run --name backdoor_wp -d -p 80:80 backdoorwp
```
Oh! A beautiful wordpress container!
![image](https://github.com/diego-tella/backdoored-container/assets/70545257/b292184c-9e5c-4e46-bfad-1ecdd514d7f5)

And RCE in the container:
```
http://127.0.0.1/wordpress/xmlrpc.php?cmd=id
```
![image](https://github.com/diego-tella/backdoored-container/assets/70545257/cf88757b-1d9c-4bbb-9a22-82af7b3e2441)
