Introduction
=========

Here some little tools useful for php development.
Main scripts are: 
 
  - Quickly set symfony2 cache permission
  - Quickly switch and show php version

   PHP - version
   -----
   We are migrating from php53 to php55. But not all projects will migrate. Someone will remain in php53. So the developer has to switch from one version to another. And what about if is working with the wrong version.
   That's why this script is build for

   ```
   (5.3.26) ~  ᐅ source tools/switchphp.sh php55
   Unlinking /usr/local/Cellar/php55/5.5.1... 21 links removed
   Linking /usr/local/Cellar/php55/5.5.1... 486 symlinks created
   (5.5.1) ~  ᐅ
   ```
   As you can see in the bash is exposed the version you are using.
   This script is based on **brew** and **oh-my-zsh**

   Insert inside __~/.zshrc__ this line:
   ```
   source ~/tools/addPhpVersionShell.sh
   ```

   Symfony Permission
   -----

   Nothing more than copy/past from the documentation.
   For every new project you have to go to the documentation and get the script to inizialize cache. I think this is a quickly way. Execute it from the project root.

   ```
   sh setSymfonyPermission.sh
   ```
