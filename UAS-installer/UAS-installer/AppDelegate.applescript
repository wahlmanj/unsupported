--
--  AppDelegate.applescript
--  UAS-installer
--
--  Created by user on 12/22/14.
--  Copyright (c) 2014 user. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
    
    property WCProgressBar : missing value
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
    
    
    on buttonhandlerupdatecode_(sender)
        tell WCProgressBar to startAnimation:me -- another way
        set animated to true
        try
        do shell script "cd /Applications; curl -L https://github.com/wahlmanj/git/raw/master/git.zip > git.zip; ditto -xk git.zip /Applications; hdiutil attach /Applications/git-2.2.1-intel-universal-snow-leopard.dmg; cp /Volumes/Git\\ 2.2.1\\ Snow\\ Leopard\\ Intel\\ Universal/git-2.2.1-intel-universal-snow-leopard.pkg /Applications; sudo installer -pkg /Applications/git-2.2.1-intel-universal-snow-leopard.pkg -target /; hdiutil unmount /Volumes/Git\\ 2.2.1\\ Snow\\ Leopard\\ Intel\\ Universal; chmod 777 /Applications/git.zip; cd /Applications; rm git.zip; cd /etc; echo '/usr/local/git/bin' | cat - paths > temp && mv temp paths; chmod 777 /Applications/git-2.2.1-intel-universal-snow-leopard.pkg; chmod 777 /Applications/git-2.2.1-intel-universal-snow-leopard.dmg; rm /Applications/git-2.2.1-intel-universal-snow-leopard.pkg; rm /Applications/git-2.2.1-intel-universal-snow-leopard.dmg; export PATH=/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH; cd /Applications; git clone https://github.com/mikedm139/UnSupportedAppstore.bundle.git; git clone https://github.com/wahlmanj/unsupported.git; chmod +x /applications/unsupported/unsupported.bash; /applications/unsupported/unsupported.bash; unsupported2.bash; chmod +x /applications/unsupported/copy.bash" with administrator privileges
        
        display dialog "Unsupported app store channel sucessfully installed..."
        on error
        display dialog "Plex media server must be installed on current users hard drive..."
        end try
        tell WCProgressBar to stopAnimation:me -- another way
        set animated to false
    end buttonhandlerupdatecode_
    
end script