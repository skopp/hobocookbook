Generators -- manual/generators/model.markdown
{: .document-title}


## Usage

    

    rails generate hobo:model NAME [field:type field:type] [options]


## Options

    

    [--timestamps]      # Indicates when to generate timestamps
    [--skip-namespace]  # Skip namespace (affects only isolated applications)
    [--old-style-hash]  # Force using old style hash (:foo => 'bar') on Ruby >= 1.9


## Runtime options

    

    -q, [--quiet]    # Suppress status output
    -s, [--skip]     # Skip files that already exist
    -f, [--force]    # Overwrite files that already exist
    -p, [--pretend]  # Run but do not make any changes


## Description

    

      Invokes the active_record:model generator, but the generated
      model file contains the fields block, (and the migration option
      is false by default).


## Examples

    

      $ rails generate hobo:model account

          creates an Account model, test and fixture:
              Model:      app/models/account.rb
              Test:       test/unit/account_test.rb
              Fixtures:   test/fixtures/accounts.yml

      $ rails generate hobo:model post title:string body:text published:boolean

          creates a Post model with a string title, text body, and published flag.

      After the model is created, and the fields are specified, use hobo:migration
      to create the migrations incrementally.
