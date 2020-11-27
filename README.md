# Bumbailiff

Keep your technical debt under control.

Check out our [blog post](https://cucumber.io/blog/bdd/todo-or-not-todo/) to learn more about the concept behind this tool.

Bumbailiff works on any git repository.

## Installation

Download and decompress the archive of this repository in the directory of your choice:

    curl -LO https://github.com/SmartBear/bumbailiff/archive/main.zip
    unzip main.zip

Add the location of the `bumbailiff-main/src` dir to your `$PATH`.

## Usage

    bumbailiff 10

This will check that you git repository does not contain more than 10 days of accumulated TODO-days. To do so, bumbailiff will query your git repository and search for all the TODOs it can find, compute the age of each one and print out the sum.

The maximum debt age is optional and defaults to 14.