# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :ticket do |f|
  f.folio 1
  f.licenseplate "MyString"
  f.note "MyText"
end
