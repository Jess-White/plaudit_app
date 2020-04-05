#letters
Letter.create(user_id: 1, referee_id: 1, title: "Test Letter 1", recipient_info: "Test Letter 1", date: "2020-09-13", section_background: "Test Letter 1", section_relationship: "Test Letter 1", section_strengths: "Test Letter 1", section_closer: "Test Letter 1")
Letter.create(user_id: 1, referee_id: 1, title: "Test Letter 2", recipient_info: "Test Letter 2", date: "2020-09-13", section_background: "Test Letter 2", section_relationship: "Test Letter 2", section_strengths: "Test Letter 2", section_closer: "Test Letter 2")
Letter.create(user_id: 1, referee_id: 1, title: "Test Letter 3", recipient_info: "Test Letter 3", date: "2020-09-13", section_background: "Test Letter 3", section_relationship: "Test Letter 3", section_strengths: "Test Letter 3", section_closer: "Test Letter 3")
Letter.create(user_id: 1, referee_id: 1, title: "Test Letter 4", recipient_info: "Test Letter 4", date: "2020-09-13", section_background: "Test Letter 4", section_relationship: "Test Letter 4", section_strengths: "Test Letter 4", section_closer: "Test Letter 4")
Letter.create(user_id: 1, referee_id: 1, title: "Test Letter 5", recipient_info: "Test Letter 5", date: "2020-09-13", section_background: "Test Letter 5", section_relationship: "Test Letter 5", section_strengths: "Test Letter 5", section_closer: "Test Letter 5")
Letter.create(user_id: 1, referee_id: 1, title: "Test Letter 6", recipient_info: "Test Letter 6", date: "2020-09-13", section_background: "Test Letter 6", section_relationship: "Test Letter 6", section_strengths: "Test Letter 6", section_closer: "Test Letter 6")

#recipients
Recipient.create(first_name: "Test Recipient 1", last_name: "Test Recipient 1", title: "Test Recipient 1", company: "Test Recipient 1", address: "Test Recipient 1", city: "Test Recipient 1", state: "Test Recipient 1", zip: "Test Recipient 1", referee_id: 1)
Recipient.create(first_name: "Test Recipient 2", last_name: "Test Recipient 2", title: "Test Recipient 2", company: "Test Recipient 2", address: "Test Recipient 2", city: "Test Recipient 2", state: "Test Recipient 2", zip: "Test Recipient 2", referee_id: 1)
Recipient.create(first_name: "Test Recipient 3", last_name: "Test Recipient 3", title: "Test Recipient 3", company: "Test Recipient 3", address: "Test Recipient 3", city: "Test Recipient 3", state: "Test Recipient 3", zip: "Test Recipient 3", referee_id: 1)
Recipient.create(first_name: "Test Recipient 4", last_name: "Test Recipient 4", title: "Test Recipient 4", company: "Test Recipient 4", address: "Test Recipient 4", city: "Test Recipient 4", state: "Test Recipient 4", zip: "Test Recipient 4", referee_id: 1)
Recipient.create(first_name: "Test Recipient 5", last_name: "Test Recipient 5", title: "Test Recipient 5", company: "Test Recipient 5", address: "Test Recipient 5", city: "Test Recipient 5", state: "Test Recipient 5", zip: "Test Recipient 5", referee_id: 1)
Recipient.create(first_name: "Test Recipient 6", last_name: "Test Recipient 6", title: "Test Recipient 6", company: "Test Recipient 6", address: "Test Recipient 6", city: "Test Recipient 6", state: "Test Recipient 6", zip: "Test Recipient 6", referee_id: 1)

# referees

Referee.create(first_name: "Test Referee 1", last_name: "Test Referee 1", title: "Test Referee 1", start_date: "2020-09-01", end_date: "2020-09-25", notes: "Test Referee 1", email: "Test Referee 1")
Referee.create(first_name: "Test Referee 2", last_name: "Test Referee 2", title: "Test Referee 2", start_date: "2020-09-02", end_date: "2020-09-25", notes: "Test Referee 2", email: "Test Referee 2")
Referee.create(first_name: "Test Referee 3", last_name: "Test Referee 3", title: "Test Referee 3", start_date: "2020-09-03", end_date: "2020-09-25", notes: "Test Referee 3", email: "Test Referee 3")
Referee.create(first_name: "Test Referee 4", last_name: "Test Referee 4", title: "Test Referee 4", start_date: "2020-09-04", end_date: "2020-09-25", notes: "Test Referee 4", email: "Test Referee 4")
Referee.create(first_name: "Test Referee 5", last_name: "Test Referee 5", title: "Test Referee 5", start_date: "2020-09-05", end_date: "2020-09-25", notes: "Test Referee 5", email: "Test Referee 5")
Referee.create(first_name: "Test Referee 6", last_name: "Test Referee 6", title: "Test Referee 6", start_date: "2020-09-06", end_date: "2020-09-25", notes: "Test Referee 6", email: "Test Referee 6")

# users

User.create(title: "Test User 1", company_name: "Test User 1", company_address: "Test User 1", company_city: "Test User 1", company_zip: "Test User 1", email: "Test User 1", background: "Test User 1", first_name: "Test User 1", last_name: "Test User 1", password_digest: "password")
User.create(title: "Test User 2", company_name: "Test User 2", company_address: "Test User 2", company_city: "Test User 2", company_zip: "Test User 2", email: "Test User 2", background: "Test User 2", first_name: "Test User 2", last_name: "Test User 2", password_digest: "password")
User.create(title: "Test User 3", company_name: "Test User 3", company_address: "Test User 3", company_city: "Test User 3", company_zip: "Test User 3", email: "Test User 3", background: "Test User 3", first_name: "Test User 3", last_name: "Test User 3", password_digest: "password")
User.create(title: "Test User 4", company_name: "Test User 4", company_address: "Test User 4", company_city: "Test User 4", company_zip: "Test User 4", email: "Test User 4", background: "Test User 4", first_name: "Test User 4", last_name: "Test User 4", password_digest: "password")
User.create(title: "Test User 5", company_name: "Test User 5", company_address: "Test User 5", company_city: "Test User 5", company_zip: "Test User 5", email: "Test User 5", background: "Test User 5", first_name: "Test User 5", last_name: "Test User 5", password_digest: "password")
User.create(title: "Test User 6", company_name: "Test User 6", company_address: "Test User 6", company_city: "Test User 6", company_zip: "Test User 6", email: "Test User 6", background: "Test User 6", first_name: "Test User 6", last_name: "Test User 6", password_digest: "password")