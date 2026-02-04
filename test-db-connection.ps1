$connectionString = "Server=DESKTOP-15TD4IT\Express;Database=liteclerk_mfcomputer;Integrated Security=true;TrustServerCertificate=true;"

try {
    $connection = New-Object System.Data.SqlClient.SqlConnection($connectionString)
    $connection.Open()
    Write-Host "Database connection successful!" -ForegroundColor Green
    Write-Host "Server Version: $($connection.ServerVersion)" -ForegroundColor Cyan
    $connection.Close()
} catch {
    Write-Host "Database connection failed!" -ForegroundColor Red
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Yellow
}
