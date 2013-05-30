# Pons
Pons, Latin for *Bridge*, is a command-line tool for writing text from your shell to your Android phone. It makes use of the Android Debugging Bridge (adb) shell. The adb shell supports text input, but only for unspaced strings and some characters also need special treatment.

### Requirements

* [Android SDK Tools]
* Connected Android phone
* USB Debugging enabled

## Getting Started

Get the repository, build, then install the gem and you are good to go

```
$ git clone git://github.com/platzhirsch/pons.git && cd pons
$ gem build pons.gemspec
$ gem install pons-0.0.1.gem
$ pons 'Hey there!'
```

<img src="http://konrad-reiche.com/images/pons.png" height="50%">

## Future Work

* Implement recognition of Unicode symbols
* Add newline parsing for writing paragraphs
* Make use of control keys

[Android SDK Tools]: http://developer.android.com/tools/sdk/tools-notes.html
