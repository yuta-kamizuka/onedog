class Age < ActiveHash::Base
  self.data = [
    {id: 1, name: '3ヶ月以下'},
    {id: 2, name: '3ヶ月以上、6ヶ月以下'},
    {id: 3, name: '6ヶ月以上、1年以下'},
    {id: 4, name: '1歳'},
    {id: 5, name: '2歳'},
    {id: 6, name: '3歳'},
    {id: 6, name: '4歳'},
    {id: 6, name: '5歳'},
    {id: 6, name: '6歳以上'}
  ]
end