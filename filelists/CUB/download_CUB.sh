#!/usr/bin/env bash

# wget https://s3.amazonaws.com/fast-ai-imageclas/CUB_200_2011.tgz # outside mainland chn
# curl -L "https://d.pcs.baidu.com/file/97eceeb196236b17998738112f37df78?fid=3028367999-250528-430114362329236&dstime=1650191255&rt=sh&sign=FDtAERVJouK-DCb740ccc5511e5e8fedcff06b081203-AY8qwuDEq671JSnTfOj6o4gyDyo%3D&expires=8h&chkv=1&chkbd=0&chkpc=&dp-logid=170435123495955524&dp-callid=0&shareid=1027176061&r=954929569&resvsflag=1-12-0-1-1-1&vuk=436981901&file_type=0" --output "CUB_200_2011.tgz" -A "pan.baidu.com" -b "BDUSS=5tNWZLbXh-U0oyUH4wV3ZsUmlTQS03ZnVTM354QzEtaUJXRjRyckFpeW92MFZpRVFBQUFBJCQAAAAAAAAAAAEAAACeGlIPNjEwMjY3NTUyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKgyHmKoMh5ib2" # mainland chn

tar -zxvf CUB_200_2011.tgz
python write_CUB_filelist.py

# https://storage.googleapis.com/kaggle-data-sets/1063153/1788708/compressed/CUB_200_2011.tgz.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20220415%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20220415T114807Z&X-Goog-Expires=259199&X-Goog-SignedHeaders=host&X-Goog-Signature=6a3f22c47679c7eaadf0bd02a75ee136f43c6c04cd07e771f30c88a18923038fdffc5063aab59d811fa6639a5eb7a605fc2f2f82ea38ff7f957ce0734f51023a3c466c4cb91759f8b6cefa147a15adaf053795765410a135a57e1665277bea26969c94cacca37145445b9de4f5ec13d112c8afcdbb158cd136c1010bdbb9d089b9c48264da354bd9fc860a332378201aa134c68ce677e761ba079f5fb5aa6028f771084252acd74308868816e86b856be5d99a36730774495ee0affcb050b75631cd6cacdc4ed7bb9e5e2c75df475d395f05672c9431cf986ea3b7e2053e95d38e26921a5864f7e00c71548d39a930e02c61728f3d29dc62546f3ab420d317ba
# mv CUB_200_2011.tgz.zip\?X-Goog-Algorithm=GOOG4-RSA-SHA256\&X-Goog-Credential=gcp-kaggle-com@kaggle-161607.iam.gserviceaccount.com%2F20220415%2Fauto%2Fstorage%2Fgoog4_request\&X-Goog-Date=20220415T114807Z\&X-Goog-Expires=259199\&X-Goog-SignedHe CUB.zip
# unzip CUB.zip
# rm CUB.zip