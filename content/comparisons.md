---
title: Comparing Kanidm with other Services
---

## LLDAP

[LLDAP](https://github.com/nitnelave/lldap) is a similar project aiming for a small and easy to administer LDAP server
with a web administration portal. Both projects use the [Kanidm LDAP bindings](https://github.com/kanidm/ldap3), and
have many similar ideas.

The primary benefit of Kanidm over LLDAP is that Kanidm offers a broader set of "built in" features like OAuth2 and
OIDC. To use these from LLDAP you need an external portal like Keycloak, where in Kanidm they are "built in". However
that is also a strength of LLDAP is that is offers "less" which may make it easier to administer and deploy for you.

If Kanidm is too complex for your needs, you should check out LLDAP as a smaller alternative. If you want a project
which has a broader feature set out of the box, then Kanidm might be a better fit.

## 389-ds / OpenLDAP

Both [389-ds](https://www.port389.org) and [OpenLDAP](https://www.openldap.org/) are generic LDAP servers. This means
they only provide LDAP and you need to bring your own IDM components - you need your own OIDC portal, webui's for self
service, commandline tools to administer and more.

If you need the highest levels of customisation possible from your LDAP deployment, then these are probably better
alternatives. If you want a service that is easy to setup and focused on IDM, then Kanidm is a better choice.

Kanidm was originally inspired by many elements of both 389-ds and OpenLDAP. Already Kanidm is as fast as (or faster
than) 389-ds for performance and scaling as a directory service.

## FreeIPA

[FreeIPA](https://www.freeipa.org) is another identity management service for Linux/Unix, and ships a huge number of
features from LDAP, Kerberos, DNS, Certificate Authority, and more.

FreeIPA however is a complex system, with a huge amount of parts and configuration. This adds a lot of resource overhead
and difficulty for administration.

Kanidm aims to have the features richness of FreeIPA, but without the resource and administration overheads. If you want
a complete IDM package, but in a lighter footprint and easier to manage, then Kanidm is probably for you. In testing
with 3000 users + 1500 groups, Kanidm is 3 times faster for search operations and 5 times faster for modification and
addition of entries (your results may differ however, but generally Kanidm is much faster than FreeIPA).

## Keycloak

[Keycloak](https://keycloak.org) is an OIDC/OAuth2/SAML provider. It allows you to layer on Webauthn to existing IDM
systems. Keycloak can operate as a stand alone IDM but generally is a component attached to an existing LDAP server or
similar.

Keycloak requires a significant amount of configuration and experience to deploy. It allows high levels of customisation
to every detail of it's authentication work flows, which makes it harder to start with in many cases.

Kanidm does NOT require Keycloak to provide services such as OAuth2 and integrates many of the elements in a simpler and
correct way out of the box in comparison.
