# iOS-TwitterClient

This project is basically a simple TableView with the ability to display a detail view for if the user interacts with an item.
It uses [RestKit](http://restkit.org/) to consume a simple call of the [Twitter Search API](http://search.twitter.com/search.json?q=twitter&rpp=20) and to serialize this data into objects.

## Setup

This project uses the ruby gem [cocoapods](http://www.cocoapods.org) to manage its dependencies. Therefore ruby is a mandatory requirement.

1. Install cocoapods by running

    ```
    gem install cocoapods
    pod setup
    ```    
2. Navigate to your local repository and run `pod install`, this will download the dependencies which are configured in the local [Podfile](PodFile)
3. Run `open TwitterClient.xcworkspace` to open the project in Xcode, by doing this cocoapods is able to link the dependencies to the project
