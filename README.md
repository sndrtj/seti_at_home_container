# seti_at_home_container
Docker container to run seti@home. 

# How to run

Running the container is simple:

```console
docker run -d -e SETI_AT_HOME_KEY=<your_authentication_key> <container>
```

You should preferably use you [weak account key](https://boinc.berkeley.edu/wiki/Weak_account_key). 
