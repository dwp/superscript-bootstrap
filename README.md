# Superscript Bootstrap

This repository holds a basic bootstrap to create a chatbot using the [SuperScript framework](http://superscriptjs.com).  The framework itself represents an attempt to build an off the shelf chatbot utilising JavaScript based AI scripting and NLP.

The framework has been created by [Rob Ellis](http://silentrob.me) - one of the founders of PhoneGap and a developer of the NaturalNode NLP library.  You can read more about his reasons for developing the framework in the following articles:

* [Introducing SuperScript](https://medium.com/@rob_ellis/superscript-ce40e9720bef)
* [Creating a ChatBot](https://medium.freecodecamp.com/creating-a-chat-bot-42861e6a2acd)
* [Slack + SuperScript — Rise of the Bots](https://medium.com/@rob_ellis/slack-superscript-rise-of-the-bots-bba8506a043c)
* [SuperScript — The big update](https://medium.com/@rob_ellis/superscript-the-big-update-3fa8099ab89a)

The framework uses a range of technology under the hood including:

* [MongoDB](https://www.mongodb.com/) for storing the "brain" of the bot allowing it to be refreshed whilst the bot is running.
* [LevelDB](http://leveldb.org/) providing a built in graph database where each user has their own SubLevelDB. 
* [NaturalNode](https://github.com/NaturalNode/natural) to aid with NLP.
* [ConceptNet](http://conceptnet5.media.mit.edu/) providing a general purpose database for knowledge extraction.
* [WordNet](https://wordnet.princeton.edu/) providing a database for word and concept expansion. 

The framework is platform agnostic has been tested on Twillio, IRC, Slack, WebRTC, SocketIO, Telegram and TCP (telnet).

### Getting started

First off you need to clone this repository (via git) on to your local machine and ensure that you have Docker installed.  You can get the latest version of Docker from the [docker.com](https://www.docker.com/products/docker).

### Preparing your slack credentials

You will first need to create your custom bot integration for slack - please see the [Innovation how-to article here](https://confluence.dwp.gov.uk/display/IN/Create+a+custom+bot+integration+for+Slack) for a guide on how to complete this process.

Once you have completed this and have your API token please copy the .env.dist file to .env in the root of this project and edit the file so that the SLACK_TOKEN value is correct for your bot.

### Launching the bot

Once you have your SLACK_TOKEN in the .env file you will be able to launch your bot via the `docker-compose up` command.  Be aware this will take a while the first time you run the process.

The SuperScript framework has a number of strange dependencies - we have only been able to get the stack operational using the 0.10 version of Node JS.

When it installs for the first time it builds several C++ libraries - including a number of C++ bindings which assist with advanced data storage and NLP functionality.

Once the build is complete you should see the bot come online in Slack, don't forget to /invite it to a channel!

### Customisation

One of the nice components of this framework is that it has a very extensible scripting language - itself named SuperScript.  It is quite different from other chatbot scripts, despite being inspired by [RiveScript](https://www.rivescript.com/) and [ChatScript](http://chatscript.sourceforge.net/).

You can find full documentation (where complete) on Github at https://github.com/superscriptjs/superscript/wiki.