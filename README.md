# code-formatter

#Prerequisites

- git is installed <https://git-scm.com/>
- maven is installed <https://maven.apache.org/>
- java jdk is installed  <http://www.oracle.com/technetwork/java/javase/downloads>
- npm is installed (nodejs) <https://nodejs.org/en/download/>
    
#Installation

simply execute in the root folder code-formatter 
```bash 
./install-code-formatter.sh
```
- this creates the hooks directory in the user folder
- copies the pre-commit hook to that folder
- clones and builds <https://github.com/google/google-java-format> and copies the resulting jar into the hooks directory
- installs js-beautify globally

#Usage

Before you commit your changes to a local repository the pre-commit hook is executed. If it's a java or javascript file
it get's formatted. This way it is ensured, that only properly formatted code is commited to the remote repository, 
regardless of the IDE and plattform you use.

There are two additional scripts which may become handy:
- `javaformat.sh` => can format all java files in one go. The only parameter to this script is the root directory 
containing the java files
- `jsformat.sh` => does the same but only for .js files.