-- Top 20 Most Streamed Artist from the Daily World Rankings of Spotify Philippines in 2017
SELECT TOP(20) Artist, SUM(Streams) AS Streams
FROM SQL_Data_Analytics.dbo.spotify_data
WHERE Region = 'ph' AND
	YEAR(Date) = 2017
GROUP BY Artist
ORDER BY 2 DESC



--### Top 20 Songs that appeared the most in the Daily World Rankings of Spotify Philippines
SELECT TOP(20) [Track_Name], COUNT(*) AS Count
FROM SQL_Data_Analytics.dbo.spotify_data
WHERE Region = 'ph'
GROUP BY Track_Name
ORDER BY 2 DESC


-- Top 20 Artist that has the Most Number of Songs in Daily Rankings of Spotify Philippines
SELECT TOP(20) Artist, COUNT(*) AS Count
FROM SQL_Data_Analytics.dbo.spotify_data
WHERE Region = 'ph'
GROUP BY Artist
ORDER BY 2 DESC

-- Top 20 Artist with the Most Number of Unique Songs in Daily Rankings of Spotify Philippines
SELECT TOP(20) Artist, COUNT(DISTINCT Track_Name) AS Unique_Songs_Count
FROM SQL_Data_Analytics.dbo.spotify_data
WHERE Region = 'ph'
GROUP BY Artist
ORDER BY 2 DESC


-- Top 20 Most Streamed Songs in the Philippines 2017
SELECT TOP(20) CONCAT(Track_Name, ' - ' ,Artist) AS Track_and_Artist, SUM(Streams) AS Streams
FROM SQL_Data_Analytics.dbo.spotify_data
WHERE YEAR(Date) = 2017 AND Region = 'ph'
GROUP BY Track_Name, Artist 
ORDER BY Streams DESC
