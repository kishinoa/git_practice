# 현재 working directory, staging area 상태 확인
git status

# .은 모든 수정/추가 사항 add
git add .
# 특정파일만 add할 경우(경로까지 포함)
git add testfolder/test1.txt

# commit을 통해 메시지타이틀과 메시지내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi모드 -> 첫줄:타이틀, 두번째줄부터 내용
git commit

# commit이력확인
git log
git log --oneline
# 현재 checkout된 브랜치의 이력 뿐만 아니라, 관계된 참조사항의 모든 이력 조회
git log --all


# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌 무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force

# 특정 commit ID로의 전환
git checkout 커밋ID
# 특정 브랜치명으로 전환
git checkout 브랜치명

# pull은 원격의 변경사항을 local로 내려받는것(fetch + merge)
git pull origin main
# fetch는 변경사항을 local로 가져오되, 병합은 하지 않음
git fetch origin main
# 만약 모든 브렌치의 변경사항을 가져오려면
git fetch --all
# 버전별(commit간)의 비교 명령어
git diff A B
git diff commitId1 commitId2
git diff 브렌치1 브렌치2

# 가장 최신의 commit 취소
git reset head~1
git reset head^
# 이미 push된 commit사항 되돌리기(완전취소x) -> 되돌리는 commitID생성
git revert 커밋ID