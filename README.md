# README

## MultiMultiTenancy on Rails

Small demo app created for the Ruby Montevideo Meetup - October 2024. The aim of this app is to showcase "MultiMultiTenancy", an extension of a regular MultiTenant app where there are multiple levels of tenants.

In order to do this we will simulate a travel app consisting of multiple travel agencies. Each agency will have its own whitelabel page and a set of destinations. A regular Multitenant app would make all the tenants independant from each other but here, each agency is going to have the possibility of having a parent agency, existing in a different MultiTenancy level.

## Example
Let's say you have a travel agency specialized in offering travels to Brazil and another that specializes in travels to Mexico. Each agency is going to have its own whitelabel page, showcasing their own respective destinations.

However, what if we had a third agency offering travels to all of LATAM? It would be nice if we could display the destinations in Brazil, Mexico and any other country in LATAM. This is why we create a LATAM travel agency, which will exist in a second MultiTenancy level.

And what if I have a travel agency offering travels all across the world? Well, then you can create an agency with MultiTenancy level 3, which will display destinations from the LATAM agency, alongside destinations from Europe, Asia and so on.

You could keep going and create a level 4 agency, a level 5 agency, and so on. But I think by now you get the idea and I don't have a spaceship to get you to destinations outside of planet Earth.

## Setup
### Create some test data
Create agencies and destinations by going to:
  - http://localhost:3000/agencies
  - http://localhost:3000/destinations
### Configure subdomains
In Mac, you can go to `/etc/hosts` and simply add the following line:
  - `127.0.0.1       localhost       uruguay.natural.com`
This will redirect all requests to `uruguay.natural.com` to your localhost server

Then, whitelist the domain by adding it to the environment variable:
  - `DEV_WHITELISTED_DOMAIN=uruguay.natural.com`

You can configure as many subdomains as you want

### Visit a whitelabel page
And that's it! With that you should be able to visit: `http://uruguay.natural.com:3000` and start playing around with some data.