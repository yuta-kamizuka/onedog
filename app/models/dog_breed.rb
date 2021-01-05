class DogBreed < ActiveHash::Base
  self.data = [
    {id: 0, name: '雑種'},
    {id: 1, name: '柴犬'},
    {id: 2, name: '土佐犬'},
    {id: 3, name: '秋田県'},
    {id: 4, name: '紀州犬'},
    {id: 5, name: '甲斐犬'},
    {id: 6, name: '四国県'},
    {id: 7, name: '北海道犬'},
    {id: 8, name: '屋久島犬'},
    {id: 9, name: '川上犬'}
  ]
end