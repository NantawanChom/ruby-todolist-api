# Ruby Todolist Api ✏️

For API-only Application

Apis Implementation:

* Create todolist

* Get todolists

* Update todolist

* Delete todolist


# For developer 🛠️

## install Ruby
** recommend use linux for develop **

```bash
sudo apt-get update

sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
```

```bash
cd
git clone https://github.com/excid3/asdf.git ~/.asdf
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
echo 'legacy_version_file = yes' >> ~/.asdfrc
echo 'export EDITOR="code --wait"' >> ~/.bashrc
exec $SHELL
```

```bash
asdf plugin add ruby
asdf plugin add nodejs
```

```bash
asdf install ruby 3.3.0
asdf global ruby 3.3.0

# Update to the latest Rubygems version
gem update --system
```

```bash
which ruby
#=> /home/username/.asdf/shims/ruby
ruby -v
#=> 3.3.0
```

```bash
asdf install nodejs 20.11.0
asdf global nodejs 20.11.0

which node
#=> /home/username/.asdf/shims/node
node -v
#=> 20.11.0

# Install yarn for Rails jsbundling/cssbundling or webpacker
npm install -g yarn
```
## Installing Rails

```bash
gem install rails -v 7.1.3

rails -v
# Rails 7.1.3
```

```bash
#### If you want to use SQLite (not recommended)
rails new myapp

#### If you want to use MySQL
rails new myapp -d mysql

#### If you want to use Postgres
# Note that this will expect a postgres user with the same username
# as your app, you may need to edit config/database.yml to match the
# user you created earlier
rails new myapp -d postgresql

# Move into the application directory
cd myapp

# If you setup MySQL or Postgres with a username/password, modify the
# config/database.yml file to contain the username/password that you specified

# Create the database
rake db:create

rails server
```

- [Resorce Install](https://gorails.com/setup/ubuntu/21.04?fbclid=IwAR1IBt2ek3aaqGv2NQV8EEjdGYB_hassLBsai81f2VsR2LB5K-w0c5BXg30)