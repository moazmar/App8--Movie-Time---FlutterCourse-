# Movie Time

The Movie Time App is designed to provide users with comprehensive information about movies, similar to IMDb. This app allows users to browse movies, view details, and keep track of their favorite films. In this version, we introduce several new widgets like `GridView` and `Table` to enhance the user interface. We will also discuss the importance of theming and navigation using `Navigator`.

## Key Widgets Used

### GridView
- **Description**: `GridView` is a widget that displays a scrollable, 2D array of widgets. It is useful for creating layouts where items are arranged in a grid format.
- **Use Case in Movie Time App**: `GridView` is ideal for displaying a collection of movies, such as popular films, top-rated movies, or movies by genre. Each cell in the grid can show a movie poster or thumbnail, providing an attractive and organized view of multiple movies.
- **Example Usage**: Using `GridView` to create a layout where each cell displays a movie poster, title, and a brief overview. This layout is particularly effective for presenting a large number of movies in a visually appealing manner.

### Table
- **Description**: `Table` is a widget that allows you to create a table layout where rows and columns are used to organize content.
- **Use Case in Movie Time App**: `Table` can be used for displaying movie details, such as cast and crew information, ratings, and release dates in a structured format. It is useful for showing data that needs to be organized into rows and columns.
- **Example Usage**: Implementing a `Table` to show detailed information about a movie, such as a table with rows for different cast members and columns for their names and roles.

## Theme
- **Description**: The theme in Flutter defines the overall look and feel of the app. It includes colors, text styles, and other visual elements that are consistent throughout the application.
- **Importance in Movie Time App**: A well-defined theme enhances the user experience by providing a cohesive and visually pleasing interface. For a movie database app like Movie Time, a dark or cinematic theme can create an immersive experience that complements the content.
- **Implementation**: Use the `ThemeData` class to define the app's theme, including primary and accent colors, text styles, and button themes. Apply the theme across the app to ensure a consistent look and feel.

### Example of Defining a Theme:
```dart
ThemeData(
  primarySwatch: Colors.deepOrange,
  accentColor: Colors.amber,
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
  ),
  backgroundColor: Colors.black,
)
```

## Navigator
- **Description**: `Navigator` is a widget that manages a stack of pages, allowing users to navigate between different screens in the app. It handles routing and navigation actions.
- **Importance in Movie Time App**: Navigation is crucial for moving between different sections of the app, such as browsing movies, viewing details, and accessing user profiles. Using `Navigator` enables smooth transitions and consistent navigation behavior.
- **Implementation**: Use the `Navigator` widget to push and pop routes (screens) from the navigation stack. Define named routes or use route generators to manage complex navigation flows.

### Example of Navigating to a Movie Detail Screen:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => MovieDetailScreen(movieId: movie.id)),
);
```

### Example of Defining Routes:
```dart
void main() {
  runApp(
    MaterialApp(
      title: 'Movie Time',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/movieDetail': (context) => MovieDetailScreen(),
      },
    ),
  );
}
```
