import DS from 'ember-data';

export default DS.Model.extend({
  first_name: DS.attr('string'),
  last_name: DS.attr('string'),
  sex: DS.attr('string'),

  birth_date: DS.attr('date'),
  death_date: DS.attr('date'),

  father_id: DS.attr('int'),
  mother_id: DS.attr('int'),
  current_spouse_id: DS.attr('int'),

  created_at: DS.attr('string', {
    defaultValue: function() { return new Date(); }
  }),
  updated_at: DS.attr('date')
});
