---
title: Getting started with Amazon's EC2
layout: post
---

When we need a server to deploy some application there are several alternatives, among the traditional ones are:

- **Shared Hosting** is a service where a provider has a server and install software that allows for multiple clients to run web sites.
    * **Upsides** cheap, almost no setup needed, less maintenance needed.
    * **Downsides** low performance, low control, not much flexibility.

- **Dedicated Server** this is an actual server that the provider installs and lends to you.
    * **Upsides** potentially better performance, very flexible, almost total control, hard to scale.
    * **Downsides** costly, much setup and maintenance needed (unless you purchase a maintenance service that is generally very costly).

- **Virtual Private Server** this is basically the same as a dedicated server, but you get access to a **Virtual Machine** instead of real hardware. Usually, a single server holds several **Virtual Machines**.
    * **Upsides** mid-performance between shared and dedicated, very flexible, total control, easy to scale.
    * **Downsides** costly if you wish to scale, much setup and maintenance needed (unless you purchase a maintenance service).

### Everything as a Service

Recently, more and more companies are offering their services for a **pay as you go** and **on demand** way. In other words, instead of selling a software license for a downloadable and/or installable system, they offer the same features hosted in their servers with a low entry fee (monthly, hourly or any other frequency).

These services vary in _what_ they offer and _how_ they do it, but, overall, they can be classified in:

- **SaaS** or _Software as a Service_ are those services that provide a software running "somewhere in the cloud" and which you don't even have to deploy. _Gmail_, _Dropbox_, _Google Docs_ and many other services we use every day are _SaaS_.

- **PaaS** or _Platform as a Service_ are those services that provide a platform where you can run an application without worrying about server setups and maintenance. A good example of this is _Heroku_, where you can simply deploy an application and not worry about _where_ it runs, or _how_ the servers are setup.

- **IaaS** or _Infrastructure as a Service_ are those services that provide a hardware infrastructure where you can install and configure software applications. A great example of this are _Google Compute Engine_, _Amazon's EC2_, among others.

### AWS: Amazon Web Services

{% include figure.html index=1 src="/assets/aws_logo_105x39@2x.png" caption="Amazon Web Services: Logo" %}

Following this trend of _Everything as a Service_, in 2006 _Amazon_ launched _Amazon Web Services_, a set of services (both _IaaS_ and _PaaS_) that aimed to reduce the costs of running applications in the cloud.

Since _AWS_ is charged by usage instead of a fixed monthly fee, it reduces the initial costs of publishing a web application or web site. For **less that $10** you can run a linux server for an **entire month** (check out the prices at https://aws.amazon.com/ec2/pricing/).

### EC2: Elastic Compute Cloud

One of the most popular services in _AWS_ is the _EC2_. In simple words, it provides a way to run _Virtual Machines_ in _AWS's_ servers without having to worry about hardware setup or maintenance.

Among the best features of this service are:

- Easy deployment using a web interface.
- Easy firewall configuration.
- Easy horizontal scaling by adding more _Virtual Machines_ as needed.
- Easy backup and restore of _Virtual Machines_.
- Low costs compared to a dedicated server.
- Availability in multiple regions to match your user's location (US's east or west coast, Europe).

Overall, _EC2_ makes it easy to create _Virtual Machines_ for both long running operations like a web application or simply to test out features in a clean server install.

This last feature is specially interesting since it could be used to create _Virtual Machines_ _on-demand_ and run an application's tests in an isolated environment. Or, simply, to quickly test an application's installation manual in a clean system.

### Creating an EC2 Instance

To get started with _EC2_ we first need to have an _Amazon_ account and sign up for _AWS_. To do that, we need to go to https://aws.amazon.com and click the **Sign In to the Console** button at the top right.

{% include figure.html index=2 src="/assets/Screen Shot 2015-05-02 at 7.43.11 PM.png" caption="Amazon Web Services: Web Site" %}

Once we have an account, is as simple as signing in with the newly created credentials and opening the _EC2_ management console by clicking the appropriate icon in the dashboard.

{% include figure.html index=3 src="/assets/Screen Shot 2015-05-02 at 7.48.37 PM.png" caption="Amazon Web Services: Dashboard" %}

We'll be presented with the _EC2 Dashboard_ where we can manage our _Virtual Machines_ (or, as _EC2_ calls them "instances").

There are so many options in this dashboard that, at the beginning, it can be a overwhelming to find our way around. To create a new instance or manage existing ones, we have to select the **Instances** option.

{% include figure.html index=4 src="/assets/Screen Shot 2015-05-02 at 8.10.54 PM.png" caption="EC2 Dashboard" %}

From the instances management console we can click any of the **Launch Instance** buttons to create a new _Virtual Machine_.

{% include figure.html index=5 src="/assets/Screen Shot 2015-05-02 at 8.16.56 PM.png" caption="EC2 Instances Console" %}

The first thing we need to do when launching an _EC2 Instance_ is choosing an _Amazon Machine Image_ (_AMI_). These are the different backbone systems we can use to start our server from. It is roughly the same as choosing which operative system / distribution we want to install on our server, the main difference is that this _AMIs_ are pre-installed and are super fast to deploy into our newly created instances.

To begin with, we will choose the latest (at the time of this writing) _Ubuntu Server LTS_ distribution (_LTS_ stands for _Long Term Support_, a special version that will receive updates for many years) which is _Ubuntu 14.04 LTS_.

{% include figure.html index=6 src="/assets/Screen Shot 2015-05-02 at 8.22.03 PM.png" caption="Choose an AMI" %}

The second step is to choose the instance type, each type has a different amount of available _RAM_, _CPU_ usage limits (what they call _vCPUs_), _Network Performance_ and other details (http://aws.amazon.com/ec2/instance-types).

We have to choose one that fits our needs but, for this guide, we will choose the smallest one. This is specially useful for playing with the _EC2 Instances_ since it is elegible for the _Free Tier_ (https://aws.amazon.com/free) which allows us to use a **t2.micro** instance for free for our first year.

{% include figure.html index=7 src="/assets/Screen Shot 2015-05-02 at 8.54.43 PM.png" caption="Choose an Instance Type" %}

From this, we can either launch the instance with the default configuration or follow the subsequent steps to customize things like:

- **Networking** you can specify the network where the instance will live and many other things like: subnets, route tables, etc.
- **Monitoring** there is a product called _CloudWatch_ where you can monitor your instances, view graphs and statistics, among other things.
- **Storage** you can add additional storage to your instance or change the default settings for the virtual hard drive your server will have assigned.
- **Tagging** to better organize your instances (some organizations can have hundreds of them) you can add custom tags like: Name, Usage, App Version, or any other you can think of.
- **Security Group** which is, in essence, the firewall configuration (which ports are reachable from the outside).

When you are ready to create your instance, click the **Review and Launch** button or just cycle through the wizard steps until the last one.

Before creating the instance, you get a chance to **Review** all the configurations that are going to be applied to the new _Virtual Machine_. Now it's your time to change anything like: instance type, storage, which are examples of things that are _a bit harder to change_ once it gets created.

{% include figure.html index=8 src="/assets/Screen Shot 2015-05-10 at 3.13.08 AM.png" caption="Review: A chance to double-check an instance's configuration before it gets created" %}

Once we decide we like the configuration, we can click the **Launch** button to start the creation of our brand new linux server. But, before we can actually start messing around with `apt-get` and other _Debian_ commands, there is one last step: setting up our _keypair_.

_EC2_ instances use _SSH's_ public key authentication by default, instead of the password-based one. This requires us to either generate or import a pair of keys (public and private) that we will use to access our server.

_AWS_ provides a _keypair_ generator that will create a _PEM_ file containing our _keys_ and will store the _public key_ and configure the instance use it for authentication. We can choose this same _keypair_ to be used in any future instances we create.

> **IMPORTANT:** Make sure you keep this _PEM_ file secure since **_AWS_ does not store the private key!**

{% include figure.html index=9 src="/assets/Screen Shot 2015-05-10 at 3.39.43 AM.png" caption="KeyPair: AWS generates a keypair for you  (make sure to save the PEM file!)" %}

After this last step, the instance will be created and deployed. It usually takes a couple minutes to be ready for usage. When it's done, well be ready to enter our server using the _SSH_ key we have downloaded during the instance creation process.

In order to connect to the instance, we need to find the correct _IP_ address or _domain name_. _EC2_ assigns a public _IP_ address every time we launch an instance (this means that, if you stop it and resume it, the _IP_ address could change).

{% include figure.html index=10 src="/assets/Screen Shot 2015-05-10 at 4.40.30 AM.png" caption="The newly created instance has an IP address and a domain name (beware, this could change when you restart it!)" %}

Finally, it's time to connect to our instance through _SSH_ using the domain name or _IP_ address we found and the _keypair_ we downloaded.

> _**NOTE:** The default user for the AMI we chose, is called **ubuntu**_

{% highlight bash %}
ssh -i ~/Downloads/mykeystore.pem.txt ubuntu@ec2-52-24-154-114.us-west-2.compute.amazonaws.com
{% endhighlight %}

If you get a warning about the file permissions for the _PEM_ file, just issue a `chmod 600` command and try again:

{% highlight bash %}
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for '/Users/myuser/Downloads/mykeystore.pem.txt' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
bad permissions: ignore key: /Users/myuser/Downloads/mykeystore.pem.txt
Permission denied (publickey).
{% endhighlight %}

> **NOTE:** Make sure you use the right path when specifying the location of your _PEM_ file.

{% highlight bash %}
chmod 600 /Users/myuser/Downloads/mykeystore.pem.txt
{% endhighlight %}

Now, just run the _SSH_ command again to connect to the instance and run a few commands to try it out:

{% highlight bash %}
ssh -i ~/Downloads/my-keystore.pem.txt ubuntu@ec2-52-24-154-114.us-west-2.compute.amazonaws.com
Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-48-generic x86_64)

ubuntu@ip-172-31-37-140:~$ lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 14.04.2 LTS
Release:	14.04
Codename:	trusty

{% endhighlight %}

### Conclusion

_AWS_ offers many, many services, and _EC2_ is a great one that allows us to easily launch servers when we need them for a very low initial price. And the _Free Tier_ is a nice way to try it out before you decide to make the jump to cloud services.

Be sure to test it if you haven't already, and leave any comments or questions below.

Thanks for reading!
