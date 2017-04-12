coreNLPsetup   [![Follow](https://img.shields.io/twitter/follow/tylerrinker.svg?style=social)](https://twitter.com/intent/follow?screen_name=tylerrinker)
============


[![Build
Status](https://travis-ci.org/trinker/coreNLPsetup.svg?branch=master)](https://travis-ci.org/trinker/coreNLPsetup)
[![Coverage
Status](https://coveralls.io/repos/trinker/coreNLPsetup/badge.svg?branch=master)](https://coveralls.io/r/trinker/coreNLPsetup?branch=master)
<a href="https://img.shields.io/badge/Version-0.0.1-orange.svg"><img src="https://img.shields.io/badge/Version-0.0.1-orange.svg" alt="Version"/></a>
</p>

**coreNLPsetup** is a set of tools to ensure proper setup of [Stanford's
CoreNLP](https://stanfordnlp.github.io/CoreNLP/).


Table of Contents
============

-   [Tools](#tools)
-   [Installation](#installation)
-   [Contact](#contact)

Tools
============


<table>
<thead>
<tr class="header">
<th>Function</th>
<th>Task</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>check_setup</code></td>
<td>checking</td>
<td>Check that Java and CoreNLP are setup</td>
</tr>
<tr class="even">
<td><code>check_java</code></td>
<td>checking</td>
<td>Check that Java is setup</td>
</tr>
<tr class="odd">
<td><code>check_stanford</code></td>
<td>checking</td>
<td>Check that CoreNLP is setup</td>
</tr>
<tr class="even">
<td><code>coreNLP_version</code></td>
<td>constant</td>
<td>The current version of corNLP</td>
</tr>
<tr class="odd">
<td><code>jave_version</code></td>
<td>constant</td>
<td>The current version of Java</td>
</tr>
<tr class="even">
<td><code>coreNLP_loc</code></td>
<td>config</td>
<td>Configure a CoreNLP location path</td>
</tr>
<tr class="odd">
<td><code>coreNLP_url</code></td>
<td>config</td>
<td>Configure the CoreNLP url</td>
</tr>
</tbody>
</table>

Installation
============

To download the development version of **coreNLPsetup**:

Download the [zip
ball](https://github.com/trinker/coreNLPsetup/zipball/master) or [tar
ball](https://github.com/trinker/coreNLPsetup/tarball/master),
decompress and run `R CMD INSTALL` on it, or use the **pacman** package
to install the development version:

    if (!require("pacman")) install.packages("pacman")
    pacman::p_load_current_gh("trinker/coreNLPsetup")

Contact
=======

You are welcome to:    
- submit suggestions and bug-reports at: <https://github.com/trinker/coreNLPsetup/issues>    
- send a pull request on: <https://github.com/trinker/coreNLPsetup/>    
- compose a friendly e-mail to: <tyler.rinker@gmail.com>    
