# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create([ {name: "Sports"},
                  {name: "Entertainment"},
                  {name: "Local News"},
                  {name: "Economy"},
                  {name: "International News"},
                  {name: "Technology"}
  ]);

Article.create([
              {headline: "Ikea recalls faulty bikes over fears they 'lead to falls'",
               content: "Swedish furniture giant Ikea on Thursday announced a recall of its bicycles following a string of accidents caused by problems with the drive belt.
\"Customers that have a Sladda bicycle are urged to stop using it and to return it to any Ikea store for a full refund,\" the DIY mammoth said in a statement.

The company has sold some 6,000 Sladda bicycles for a starting price of 500 euros ($585) in 26 countries since launch in August 2016 -- with about a third sold in Sweden.

In its statement, Ikea said it had been informed that the bike's \"drive belt can suddenly snap, which in turn can lead to falls\".

The company has been informed of 11 accidents, with two people suffering minor injuries as a result.

Sladda accessory owners will also be reimbursed for their purchases, Ikea said.",
              category_id: 6},

            {headline: "Sweden votes through new sexual consent law",
             content: "The Swedish parliament has voted in favour of tightening the country's laws on sex crimes.
From July 1st having sex with someone without their explicit consent in Sweden will be illegal (the law will treat consent as possible either through words or clear actions). This means that unless the sex is fully voluntary, it will be considered a criminal act, whether or not violence or threats were used.

There will also no longer be a need to prove intent for some very serious sex crimes, which means an alleged offender could be convicted even if he or she did not actively intend to rape the victim.

\"This is just one step out of many to reach the goal that each human being's sexuality is fully respected,\" said Maria Arnholm, a member of the Liberal Party, in the parliamentary debate.

The punishment for aggravated rape and rape of a child will be increased from a minimum of five years in jail, as opposed to the current four years. Parliament also urged the government to put forward a proposal to increase the punishment for rape in general to three years' imprisonment.

The centre-left government had clarified some parts of the draft legislation after the Council on Legislation said that it was too unclear and difficult to know in advance what the new law considered illegal or not.

Rape cases are often a matter of one person's word against the other, making it difficult to prove what has happened as there are generally no witnesses. But the matter of what is considered evidence will not be changed by the new legislation.

The debate gained momentum a few years ago following several high-profile cases in which alleged rapists were freed on the basis that they had not knowingly acted against the other person's wishes.

Last year's #MeToo campaign may have brought the issue to its head, but the law change has been a long time coming, with Sweden's former centre-right government launching an inquiry in 2014 to find out why the country's relatively high rate of reported rape incidents does not lead to more convictions.

In 2015, 22 percent of all sexual crimes (including both more serious offences and comparatively less serious) processed by police or prosecutors led to a conviction in court or other kind of punishment.",
          category_id: 6}

  ]);
