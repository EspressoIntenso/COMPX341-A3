if (!$args.count -eq 1){
    Write-Host "Usage: pipeline.ps1 commitMessage"
    exit
}
npm install
npm run build
if ($LASTEXITCODE){
    #Exit code was 1 an error has occured 
    Write-Host "An error has occured, exiting and not commiting"
    exit
}
#Has compiled successfully, commit to git
Write-Host "No error has occured, pushing changes to repo"
git commit -a -m $args[0]
git push origin main
npm run start