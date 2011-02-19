### Melee: A minimalist acceptance test solution for Riot ###

Melee is an acceptance test solution for [Riot](http://thumblemonks.github.com/riot/), like [Steak](https://github.com/cavalle/steak) is to
[Rspec](http://rspec.info/).


#### Installation ####

just install the gem:

    gem install melee



#### Some Examples ####

Here's how melee looks like for the unitiated.


    # Same as the context method
    feature %Q{
    To write better software
    as a ruby developer and a riot user
    I need to write me some acceptance test
    } do

      # Same as the setup method
      background { "that i'm no different than setup" }

      # Same as the asserts method
      scenario "With some background, it should really be no different than a setup" do
        topic =~ /setup/
      end

      # Synonmous to the helper method in riot
      given(:a_string) { "yay for acceptance test" }

      scenario "With some string that I have, it should ensure that the string" do
        a_string
      end.matches %r{acceptance} # Takes the same macros

    end

If you know how to use riot, you already know how to use melee. Melee
provides alias for most of the methods you use in riot to provide you
that acceptance test feel.

#### Contribute ####

- Fork the project.
- Make your feature addition or bug fix.
- Add tests for it. This is important so I don't break it in a future version unintentionally.
- Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
-  Send me a pull request. Bonus points for topic branches.

#### Copyright ####

Copyright (c) 2011 Arthur Chiu. See LICENSE for details.

