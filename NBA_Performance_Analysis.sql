USE nba_analytics;
GO

SELECT
    Team,
    Wins,
    Losses,
    ROUND(
        100.0 * Wins / (Wins + Losses), 2
    ) AS Win_Percentage,
    Home_Attendance,
    Home_Games,
    ROUND(
        1.0 * Home_Attendance / Home_Games, 2
    ) AS Average_Attendance
FROM dbo.nba_full_season_2025
ORDER BY Wins DESC;