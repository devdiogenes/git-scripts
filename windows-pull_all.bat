@echo off
for /d %%D in (*) do (
    if exist "%%D\.git" (
        echo Pulling in %%D
        pushd %%D
        git pull
        popd
    ) else (
        echo %%D is not a git repository.
    )
)
pause
