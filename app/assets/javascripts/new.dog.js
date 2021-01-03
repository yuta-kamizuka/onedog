$(function(){
     //画像用inputを生成する関数
     const buildFileField = (index)=> {
       const html = `<div date-index="${index}" class="js-file_group">
                     <input accept="image/*" class="js-file"
                     date-index="${index}"
                     type="file"
                     name="dog[images_attributes][${index}][src]"
                     id="dog_images_attributes_${index}_src"></div>`;
       return html;
     }
    //  file_fieldのnameに動的なindexをつける為の配列
    let fileIndex = [1,2,3,4,5,6,7,8,9,10];

    $('#image__input').on('change', '.js-file', function(e) {
      // fileIndexの先頭の数字を使ってinputを作る。 ファイル選択時に、14行目に用意した配列の先頭の数字をbuildFileField関数に渡します。
      $('#image__input').append(buildFileField(fileIndex[0]));
      // shift() メソッドは、配列から最初の要素を取り除き、その要素を返します。このメソッドは配列の長さを変えます。
      fileIndex.shift();
      // 末尾に1を足した数字を追加する
      // push とは配列の末尾(後ろ)に新しい要素を追加するためのメソッドです。
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
    });

    $('#image__input').on('click', 'js-remove', function() {
      $(this).parent().remove();
      // 画像入力欄が0にならないようにする。
      if ($('.js-file').length == 0) $('#image__input').append(buildFileField(fileIndex[0]));
    });
});