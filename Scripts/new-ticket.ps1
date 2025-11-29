# new-ticket.ps1
# This script creates a new Help Desk ticket file using the ticket template.

# Prompt user for ticket ID and name
$ticketId = Read-Host "Enter Ticket ID"
$userName = Read-Host "Enter Requestor Name"

# Set file name
$date = Get-Date -Format "yyyy-MM-dd"
$fileName = "ticket-$ticketId-$date.md"
$path = "./$fileName"

# Ticket template content
$content = @"
# Help Desk Ticket

**Ticket ID:** $ticketId  
**Date Created:** $date  
**Requested By:** $userName  
**Department / Location:**  
**Contact Info:**  

---

## 1. Issue Summary


## 2. Device & Environment


## 3. Issue Details


## 4. Troubleshooting Performed


## 5. Resolution


## 6. Status
- [ ] New
- [ ] In Progress
- [ ] Resolved
- [ ] Closed

## 7. Technician Notes

"@

# Write the file
Set-Content -Path $path -Value $content

Write-Output "New ticket created: $fileName"
