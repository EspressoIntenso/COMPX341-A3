npm install
npm run build
if ($LASTEXITCODE)
{
    #Exit code was 1 an error has occured 
    Write-Host "An error has occured, exiting and not commiting"
    exit
}
#Has compiled successfully, commit to git
Write-Host "No error has occured, pushing changes to repo"
git commit -a -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
git push origin main
npm run start