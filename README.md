### rnd-jenkins
Jenkins and runners via vagrant

# Jenkins Master
```bash
> vagrant up jenkins
# if errors appear during provision, just try again
> vagrant provision jenkins
```

# Jenkins Agent (Win10)

- Create VBox guest "Win10". Install all required deps for building.
- To create base box from existing VBox guest

```bash
> vagrant package --base <VBox guest name> --output win10-agent
> vagrant up jenkins-agent 
```

