//   $(function(){
//       //画像用inputを生成する関数
//       const buildFileField = (index)=> {
//         const html = `<div date-index="${index}" class="js-file_group">
//                       <input accept="image/*" class="js-file"
//                       date-index="${index}"
//                       style="display: none;",
//                       type="file"
//                       name="dog[images_attributes][${index}][src]"
//                       id="dog_images_attributes_${index}_src"></div>`;
//         return html;
//       }
//       //  プレビュー用imgタグ生成の関数
//       const buildImg = (index, url)=> {
//         const html = `<img date-index="${index}>" src="${url}" width="200px" height="200px">
//                       <div class="js-remove" id="js-remove${index}">削除</div>`;
//         return html;
//       }

//     //  file_fieldのnameに動的なindexをつける為の配列
//     let fileIndex = [1,2,3,4,5,6,7,8,9,10];

//       // 既に使われているindexを除外。これにより、数字のつじつまが合うようになる。
//       lastIndex = $('.js-file:last').data('index');
//       fileIndex.splice(0, lastIndex);
//       $('.hidden-destroy').hide();

//       //カメラボタンがクリックされた時に発火するメソッド
//       $('#image-Input__label').on("click",function() { 
//         // インプットタグの「最後」を取得する
//         const file_field = $('.js-file:last');
//         // 取得したインプットタグをクリックするメソッド
//         file_field.trigger("click");
//       })

//     $('#image__input').on('change', '.js-file', function(e) {
//       // ファイルが選択されたときfileIndexの最初の数字をindexとして持ったフォームを新しく作成する。
//       const targetIndex = $(this).parent().data('index');

//        // labelタグのfor属性を変更
//        $('#image-Input__label').attr('for', `images_attributes_${fileIndex[0]}_url`);

//       // ファイルのブラウザ上でのURLを習得する
//       const file = e.target.files[0];
//       const blobUrl = window.URL.createObjectURL(file);

//       // 該当indexを持つimgタグがあれば習得して変数imgへ入れる（画像変更処理）

//       if (img = $(`img[date-index="${targetIndex}"]`)[0]) {
//         img.setAttribute('src', blobUrl);
//       } else {  //新規画像追加処理
//         const new_image = buildImg(targetIndex, blobUrl)
//         const new_image_wrapper = `<div class="new_image_wrapper">${new_image}</div>`;
//         // $('#preview').append(buildImg(targetIndex, blobUrl));
//         // $('#image__input').append(buildImg(targetIndex, blobUrl));

//         $('#preview').append(new_image_wrapper);

//         // fileIndexの先頭の数字を使ってinputを作る。 ファイル選択時に、14行目に用意した配列の先頭の数字をbuildFileField関数に渡します。
//         $('#imageInput').append(buildFileField(fileIndex[0]));
//         // shift() メソッドは、配列から最初の要素を取り除き、その要素を返します。このメソッドは配列の長さを変えます。
//         fileIndex.shift();
//         // 末尾に1を足した数字を追加する
//         // push とは配列の末尾(後ろ)に新しい要素を追加するためのメソッドです。
//         fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
//       }
//     });

//     $('.image_box').on('click', 'js-remove', function() {
//       const targetIndex = $(this).parent().data('index');
//        // 該当indexを振られているチェックボックスを取得する
//       const hiddenCheck = $(`#dog_images_attributes_${targetIndex}__destroy`);
//       // もしチェックボックスが存在すればチェックを入れる
//       $(`#dog_images_attributes_${targetIndex}__destroy`).prop("checked", true);

//         // ここで削除が実行
//         $(this).parent().remove();

//         $(`#dog_images_attributes_${targetIndex}_url`).remove();
//         // $(`img[data-index="${targetIndex}"]`).remove();
//        // 画像入力欄が0にならないようにする。
//        if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
//     });
//   });
// });


document.addEventListener('turbolinks:load', function() {
  $(function (){
    //画像用inputを生成する関数
    const buildFileField = (index)=> {
      const html = `<div data-index="${index}" class="js-file_group">
                    <input accept="image/*" class="js-file" 
                    data-index="${index}"
                    style="display: none;",
                    type="file" 
                    name="dog[images_attributes][${index}][src]"
                    id="dog_images_attributes_${index}src"></div>`;
      return html;
    }
    //プレビュー用imageタグを生成する関数
    const buildImg = (index, url)=> {
      const html = `<img data-index="${index}>" src="${url}" width="200" height="200">
                    <div class="js-remove" id="js-remove${index}">削除する</div>`;
      return html;
    }

    // file_fieldのnameに動的なindexをつける為の配列
    let fileIndex = [1,2,3,4,5,6,7,8,9,10];
    

    // 既に使われているindexを除外。これにより、数字のつじつまが合うようになる。
      lastIndex = $('.js-file:last').data('index');
      fileIndex.splice(0, lastIndex);
      $('.hidden-destroy').hide();


    //カメラボタンがクリックされた時に発火するメソッド
    $('#image-Input__label').on("click",function() { 
      // インプットタグの「最後」を取得する
      const file_field = $('.js-file:last');
      // 取得したインプットタグをクリックするメソッド
      file_field.trigger("click");
    })

    $('#imageInput').on('change', '.js-file', function(e) {
      // ファイルが選択されたときfileIndexの最初の数字をindexとして持ったフォームを新しく作成する。
      const targetIndex = $(this).parent().data("index");

      // labelタグのfor属性を変更
      $('#image-Input__label').attr('for', `images_attributes_${fileIndex[0]}_url`);
      
      // ファイルのブラウザ上でのURLを習得
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);

    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  // 新規画像追加の処理
      const new_image = buildImg(targetIndex, blobUrl)
      const new_image_wrapper = `<div class="new_image_wrapper">${new_image}</div>`;
      
      $('#preview').append(new_image_wrapper);
      
    
      // fileIndexの先頭の数字を使ってinputを作る
    //  $('.image_box#mini:last').append(buildFileField(fileIndex[0]));
      $('#imageInput').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
    
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });

  $('.image_box').on('click', '.js-remove', function() {
    const targetIndex = $(this).parent().data('index');
    // 該当indexを振られているチェックボックスを取得する
    const hiddenCheck = $(`#dog_images_attributes_${targetIndex}__destroy`);

    // もしチェックボックスが存在すればチェックを入れる
    $(`#dog_images_attributes_${targetIndex}__destroy`).prop("checked", true);

    // ここで削除が実行
      $(this).parent().remove();
    
      // この辺りに、ファイルを選択も消す動作を入れたい
      $(`#dog_images_attributes_${targetIndex}_src`).remove();

      // 画像入力欄が0個にならないようにしておく
      if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
    });
  });
});