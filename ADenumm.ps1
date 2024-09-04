# Get the name of the Primary Domain Controller (PDC) for the current domain
$PDC = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().PdcRoleOwner.Name

# Get the distinguished name (DN) of the current domain
$DN = ([adsi]'').distinguishedName 

# Create the LDAP path using the PDC name and the distinguished name
$LDAP = "LDAP://$PDC/$DN"

# Output the LDAP path
$LDAP
