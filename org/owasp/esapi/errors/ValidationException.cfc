<cfcomponent extends="EnterpriseSecurityException" output="false">

	<cfscript>
		instance.context = '';
	</cfscript>

	<cffunction access="public" returntype="ValidationException" name="init" output="false">
		<cfargument type="cfesapi.org.owasp.esapi.ESAPI" name="ESAPI" required="true">
		<cfargument type="String" name="userMessage" required="false">
		<cfargument type="String" name="logMessage" required="false">
		<cfargument type="any" name="cause" required="false" hint="java.lang.Throwable">
		<cfargument type="String" name="context" required="false">
		<cfscript>
			super.init(argumentCollection=arguments);
			if (structKeyExists(arguments, "context")) {
	        	setContext(arguments.context);
			}

			return this;
		</cfscript>
	</cffunction>


	<cffunction access="public" returntype="string" name="getContext" output="false" hint="Returns the UI reference that caused this ValidationException">
		<cfscript>
			return instance.context;
		</cfscript>
	</cffunction>


	<cffunction access="public" returntype="void" name="setContext" output="false" hint="Set's the UI reference that caused this ValidationException">
		<cfargument type="String" name="context" required="true">
		<cfscript>
			instance.context = arguments.context;
		</cfscript>
	</cffunction>


</cfcomponent>
