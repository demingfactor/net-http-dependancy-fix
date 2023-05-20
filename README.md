# Net::Http::Dependancy::Fix

[DONT USE THIS GEM PRE RUBY 2.5](https://github.com/mikel/mail/pull/1439#discussion_r797557560)

This gem fixes some insidious bugs that are affecting many many ruby projects.

The errors reported are like this
```
LoadError: cannot load such file -- net/smtp
```

This gem simply loads a curated collection of gems that fix the above warnings.

Installing this gem essentially installs the following curated list of gems.
```
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false
gem "uri"
```

Resolves a some strange little bugs related to: 
 
How ruby loads net/http + the mail gem is causing issues.
This gem is a shorthand to loading a small batch of gems that together fix this issue.

### When you might need this

Commonly you might use this gem on a journey from Rails 5.0 to Rails 7 and later.
Specifically once your on ruby 2.6 but before ruby 3.1 this could be affecting you.

### When you can remove this gem

The issue is (apparantley) solved from Rails 7.01 and in ruby 3.1.

### Where can I find out more

Best explaination of the issue and why it occurs https://github.com/ruby/net-imap/issues/16#issuecomment-803086765.

There are [more](https://stackoverflow.com/questions/70500220/rails-7-ruby-3-1-loaderror-cannot-load-such-file-net-smtp).

### A more full background

#### Comment from Bundler's maintainer

David Rodríguez, bundler's maintainer said this on bugs.ruby-lang.org

"This sometimes happens when rubygems loads a default gem too early before bundler has been setup. Then when user code loads the actual gem it uses the $LOAD_PATH setup by bundler instead of the default one, causing the double load. Up until now we always found ways to fix these issues by making usages of default gems inside rubygems as lazy as possible, or by vendoring copies of the default gems that we need under our namespace so that we don't interfere with user's choice, but it seems like we're still loading digest too early."

ref: https://bugs.ruby-lang.org/issues/17873#note-18

#### Comment on 'mail' gem

"Actually this cause double loading warnings for ruby 3.0 and older. I'm not too sure yet how best to fix this."

ref: https://github.com/mikel/mail/pull/1439#issuecomment-850305822











## Installation


Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

## Usage

Include this gem in your Gemfile (or gemspec) to address the above mentioned issues.

## Development

Update the gemspec and update the README. There's really nothing else to see here.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/net-http-dependancy-fix. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/net-http-dependancy-fix/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Net::Http::Dependancy::Fix project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/net-http-dependancy-fix/blob/main/CODE_OF_CONDUCT.md).
