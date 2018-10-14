# docker-httpd-svn

## Volumes

### `/svn/auth`

Directory for SVN authentication files:

#### **svn-auth-users**:

*Apache .htpasswd-file with usernames and passwords.*

Default credentials: `user` and `password`.

Create new user with:

`htpasswd /svn/auth/svn-auth-users <your_username>`

#### **svn-access-control**:

*SVN (svnserve) authz-file.*

### `/svn/repos`

*Directory for SVN repositories.*

Create new repository with:

`svnadmin create /svn/repos/<your_repo_name>`
