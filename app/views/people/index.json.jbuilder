json.people @people do |person|
  json.id person.id
  json.first_name person.first_name
  json.last_name person.last_name
  json.father person.father_id
  json.mother person.mother_id
end