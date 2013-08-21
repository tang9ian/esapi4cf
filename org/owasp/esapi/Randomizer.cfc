﻿<!---
/**
 * OWASP Enterprise Security API (ESAPI)
 * 
 * This file is part of the Open Web Application Security Project (OWASP)
 * Enterprise Security API (ESAPI) project. For details, please see
 * <a href="http://www.owasp.org/index.php/ESAPI">http://www.owasp.org/index.php/ESAPI</a>.
 *
 * Copyright (c) 2011 - The OWASP Foundation
 * 
 * The ESAPI is published by OWASP under the BSD license. You should read and accept the
 * LICENSE before you use, modify, and/or redistribute this software.
 * 
 * @author Damon Miller
 * @created 2011
 */
--->
<cfinterface hint="The Randomizer interface defines a set of methods for creating cryptographically random numbers and strings. Implementers should be sure to use a strong cryptographic implementation, such as the JCE or BouncyCastle. Weak sources of randomness can undermine a wide variety of security mechanisms. The specific algorithm used is configurable in ESAPI.properties.">

	<cffunction access="public" returntype="String" name="getRandomString" output="false"
	            hint="Gets a random string of a desired length and character set.  The use of java.security.SecureRandom is recommended because it provides a cryptographically strong pseudo-random number generator. If SecureRandom is not used, the pseudo-random number gernerator used should comply with the statistical random number generator tests specified in FIPS 140-2, Security Requirements for Cryptographic Modules, section 4.9.1.">
		<cfargument required="true" type="numeric" name="length" hint="the length of the string"/>
		<cfargument required="true" type="Array" name="characterSet" hint="the set of characters to include in the created random string"/>
	
	</cffunction>
	
	<cffunction access="public" returntype="boolean" name="getRandomBoolean" output="false"
	            hint="Returns a random boolean.  The use of java.security.SecureRandom is recommended because it provides a cryptographically strong pseudo-random number generator. If SecureRandom is not used, the pseudo-random number gernerator used should comply with the statistical random number generator tests specified in  FIPS 140-2, Security Requirements for Cryptographic Modules, section 4.9.1.">
	</cffunction>
	
	<cffunction access="public" returntype="numeric" name="getRandomInteger" output="false"
	            hint="Gets the random integer. The use of java.security.SecureRandom is recommended because it provides a cryptographically strong pseudo-random number generator. If SecureRandom is not used, the pseudo-random number gernerator used should comply with the statistical random number generator tests specified in FIPS 140-2, Security Requirements for Cryptographic Modules, section 4.9.1.">
		<cfargument required="true" type="numeric" name="min" hint="the minimum integer that will be returned"/>
		<cfargument required="true" type="numeric" name="max" hint="the maximum integer that will be returned"/>
	
	</cffunction>
	
	<cffunction access="public" returntype="numeric" name="getRandomLong" output="false"
	            hint="Gets the random long. The use of java.security.SecureRandom is recommended because it provides a cryptographically strong pseudo-random number generator. If SecureRandom is not used, the pseudo-random number gernerator used should comply with the statistical random number generator tests specified in FIPS 140-2, Security Requirements for Cryptographic Modules, section 4.9.1.">
	</cffunction>
	
	<cffunction access="public" returntype="String" name="getRandomFilename" output="false"
	            hint="Returns an unguessable random filename with the specified extension.  This method could call getRandomString(length, charset) from this Class with the desired length and alphanumerics as the charset then merely append '.' + extension.">
		<cfargument required="true" type="String" name="extension" hint="extension to add to the random filename"/>
	
	</cffunction>
	
	<cffunction access="public" returntype="numeric" name="getRandomReal" output="false"
	            hint="Gets the random real.  The use of java.security.SecureRandom is recommended because it provides a cryptographically strong pseudo-random number generator. If SecureRandom is not used, the pseudo-random number gernerator used should comply with the statistical random number generator tests specified in FIPS 140-2, Security Requirements for Cryptographic Modules, section 4.9.1.">
		<cfargument required="true" type="numeric" name="min" hint="the minimum real number that will be returned"/>
		<cfargument required="true" type="numeric" name="max" hint="the maximum real number that will be returned"/>
	
	</cffunction>
	
	<cffunction access="public" returntype="String" name="getRandomGUID" output="false"
	            hint="Generates a random GUID.  This method could use a hash of random Strings, the current time, and any other random data available.  The format is a well-defined sequence of 32 hex digits grouped into chunks of 8-4-4-4-12.">
	</cffunction>
	
</cfinterface>