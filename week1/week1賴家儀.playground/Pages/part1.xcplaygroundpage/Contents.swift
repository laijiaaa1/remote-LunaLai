//Part 1: Git & GitHub
/*
 2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.

 作答：
    ● git status
    顯示工作狀態
        -顯示哪些文件已更改、刪除、添加、重命名
        -顯示當前暫存要提交的文件
        -顯示untracked的文件
    用於：commit前查看狀態
        $ git status
        On branch main
        Your branch is up to date with 'origin/main'.
        nothing to commit, working tree clean
     
    ● git add
    將文件添加到暫存區
    用於：將新增及修改過後的文件添加
        $ git add .        //新增全部
     
    ● git reset
    將先前的操作撤銷，還原到指定的狀態
    用於：提交錯誤文件或想重新編輯提交的文件時、重新指定分支、重置單獨一個文件時
     
    ● git commit
     提交一個新版本，使工作目錄上顯示清空
     用於：存儲新的提交中
     
    ● git log
    顯示提交的清單
     用於：可查看先前歷史紀錄，顯示版本的提交及更新
        $ git log
        commit 646aefda613a207f4886eb813b17533b75f1d0a4 (HEAD -> main, origin/main, origin/HEAD)
        Author: laijiaaa1 <laijiaaa1@gmail.com>
        Date:   Tue Aug 29 22:57:45 2023 +0800

            -a

        commit 80f53e51534a00f7d01673aeb76ca2d20d0f33e4
        Author: laijiaaa1 <131647109+laijiaaa1@users.noreply.github.com>
        Date:   Tue Aug 29 19:46:28 2023 +0800

            Initial commit

    ● git branch
     查看已存在的分支、新增分支
        ＄git checkout ＋branchName          //切換分支
            -l列出分支
            -m重新命名分支
            -c複製分支
            -d刪除分支
*   ● git merge
    合併分支
    用於：合併回目的地的分支
        $ git branch -v                     //查看目前在哪個分支
        $ git checkout master               //切換到master分支
        $ git merge branchName              //合併branchName這個分支進master分支
 
    ● git push [ repo_name ] [ branch_name ]
     將本地資料更新、推送至遠端
        $ git push origin master
     用於：將本地的master分支推送到origin主機的master分支。如果master不存在，則會新建。
     
    ● git remote
     列出已經存在的遠端分支
     用於：新增分支時，查看分支狀態
        $ git remote
            origin
     
    ● fork
     將 Git 儲存庫分離出新的儲存庫，操作出新的儲存庫稱為fork
     在gitHub操作，點擊擴充forks，可用於協作和備份
     
    ● (Advanced) git rebase
     合併分支，重新提交，將修改過的分支整合
        $ git checkout ＋branchName
        $ git rebase master
     
    ● (Advanced) git cherry-pick
     指定某些commit挑取出來，可用於檢視、合併一個或多個commit進master
        $ git checkout master               //切換分支
        $ git cherry-pick ＋commitName      //挑選
        $ git cherry-pick master
     
    ● (Advanced) git reflog
     檢視所有版本變化，從中找到所需的commit
        ＄git reflog ＋branchName
     
    ● (Advanced) git tag
     檢視所有標籤、新增、刪除
        $ git tag ＋tagName ＋commitnName   // 新增標籤
        $ git tag -d ＋tagName             // 刪除標籤
 --------------------------------
參考資料：
 https://git-scm.com/docs
 git cherry-pick：
    https://medium.com/%E7%A8%8B%E5%BC%8F%E4%B9%BE%E8%B2%A8/git-cherry-pick-%E4%BD%BF%E7%94%A8%E5%A0%B4%E6%99%AF-59ac61723bfe
 git tag：
 https://git-tutorial.readthedocs.io/zh/latest/tagging.html
 --------------------------------
 
3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
 
 方法一
    一、建立 GitHub 儲存庫
    於GitHub瀏覽器上，創建新存儲庫 New Repository
    
    二、上傳到 GitHub
    開啟終端機
    1.開啟欲存放repo的路徑
        cd /Users/laijiaaa1/Documents/swift/remote
    2.初始化建置git
        $ git init
    3.將欲上傳的檔案及修改過後的文件添加入暫存區，所有更改暫存為下一次提交
        $ git add .
*   4.提交版本（附加描述更改的提交消息）
        $ git commit -m
    5.將預設分支從master重命名為main
        $ git branch -M main
    6.將遠端存儲庫URL與名稱origin相關聯
        $ git remote add origin https://github.com/laijiaaa1/remote.git
    7.將本地主分支推送到名為origin的遠端GitHub存儲庫
        $ git push -u origin main
    8.打開 README.md 檔，使用Vim文字編輯器編輯，編輯自述文件內容
        $ vim README.md
 
    9.  $ git add .
*   10. $ git commit -m
    11. $ git push
    12.顯示存儲庫的狀態，檢視資料夾內文件的變化、檢視是否有暫存資料
        $ git status
         
 方法二
    一、建立 GitHub 儲存庫
     於GitHub瀏覽器上，創建新存儲庫 New Repository
     設定自述文件和權限
     開啟終端機
     3.開啟欲存放repo的路徑
        $ cd /Users/laijiaaa1/Documents/swift
     4.將github上已建立好的資料下載為資料夾
        $ git clone https://github.com/laijiaaa1/Remote_LaiChia-I.git

    二、上傳到 GitHub
     1.將欲上傳GitHub之檔案移動至repo指定資料夾內
     2.指定repo路徑資料夾
        $ cd /Users/laijiaaa1/Documents/swift/Remote_LaiChia-i
     3.打開 README.md 檔，使用Vim文字編輯器編輯，編輯自述文件內容
        $ vim README.md
     4.將欲上傳的檔案及修改過後的文件添加入暫存區，所有更改暫存為下一次提交
        $ git add .
     5.提交版本（附加描述更改的提交消息）
*       $ git commit -m 
     6.將本地端資料推送至遠端GitHub儲存庫
        $ git push
     7.顯示存儲庫的狀態，檢視資料夾內文件的變化、檢視是否有暫存資料
        $ git status
 --------------------------------
 */
