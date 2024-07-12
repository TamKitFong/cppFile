#include <iostream>
using namespace std;

void repeatLocation() {
    cout << "You selected the same location, pls select an empty location !!\n";
}

void overLocation()
{
    cout << "You selected the range of location less 0 over 3 , pls select the right range !!\n";
}

char gameboard[4][4] = {
    {'_', '_', '_', '_'},
    {'_', '_', '_', '_'},
    {'_', '_', '_', '_'},
    {'_', '_', '_', '_'},
};


void printboard(char gameboard[4][4])
{
    cout << "   0 1 2 3 \n";
    cout << "-+--------\n";
    cout << "0  " << gameboard[0][0] << "|" << gameboard[0][1] << "|" << gameboard[0][2] << "|" << gameboard[0][3] << endl;
    cout << "1  " << gameboard[1][0] << "|" << gameboard[1][1] << "|" << gameboard[1][2] << "|" << gameboard[1][3] << endl;
    cout << "2  " << gameboard[2][0] << "|" << gameboard[2][1] << "|" << gameboard[2][2] << "|" << gameboard[2][3] << endl;
    cout << "3  " << gameboard[3][0] << "|" << gameboard[3][1] << "|" << gameboard[3][2] << "|" << gameboard[3][3] << endl;
}

bool playerAwin(char gameboard[4][4])
{
    if ((gameboard[0][0] == 'O' && gameboard[0][1] == 'O' && gameboard[0][2] == 'O' && gameboard[0][3] == 'O') ||
        (gameboard[1][0] == 'O' && gameboard[1][1] == 'O' && gameboard[1][2] == 'O' && gameboard[1][3] == 'O') ||
        (gameboard[2][0] == 'O' && gameboard[2][1] == 'O' && gameboard[2][2] == 'O' && gameboard[2][3] == 'O') ||
        (gameboard[3][0] == 'O' && gameboard[3][1] == 'O' && gameboard[3][2] == 'O' && gameboard[3][3] == 'O') ||
        (gameboard[0][0] == 'O' && gameboard[1][0] == 'O' && gameboard[2][0] == 'O' && gameboard[3][0] == 'O') ||
        (gameboard[0][1] == 'O' && gameboard[1][1] == 'O' && gameboard[2][1] == 'O' && gameboard[3][1] == 'O') ||
        (gameboard[0][2] == 'O' && gameboard[1][2] == 'O' && gameboard[2][2] == 'O' && gameboard[3][2] == 'O') ||
        (gameboard[0][3] == 'O' && gameboard[1][3] == 'O' && gameboard[2][3] == 'O' && gameboard[3][3] == 'O') ||
        (gameboard[0][0] == 'O' && gameboard[1][1] == 'O' && gameboard[2][2] == 'O' && gameboard[3][3] == 'O') ||
        (gameboard[0][3] == 'O' && gameboard[1][2] == 'O' && gameboard[2][2] == 'O' && gameboard[3][0] == 'O'))
    {
        return true;
    }

    return false;
}

bool playerBwin(char gameboard[4][4])
{
    if ((gameboard[0][0] == 'X' && gameboard[0][1] == 'X' && gameboard[0][2] == 'X' && gameboard[0][3] == 'X') ||
        (gameboard[1][0] == 'X' && gameboard[1][1] == 'X' && gameboard[1][2] == 'X' && gameboard[1][3] == 'X') ||
        (gameboard[2][0] == 'X' && gameboard[2][1] == 'X' && gameboard[2][2] == 'X' && gameboard[2][3] == 'X') ||
        (gameboard[3][0] == 'X' && gameboard[3][1] == 'X' && gameboard[3][2] == 'X' && gameboard[3][3] == 'X') ||
        (gameboard[0][0] == 'X' && gameboard[1][0] == 'X' && gameboard[2][0] == 'X' && gameboard[3][0] == 'X') ||
        (gameboard[0][1] == 'X' && gameboard[1][1] == 'X' && gameboard[2][1] == 'X' && gameboard[3][1] == 'X') ||
        (gameboard[0][2] == 'X' && gameboard[1][2] == 'X' && gameboard[2][2] == 'X' && gameboard[3][2] == 'X') ||
        (gameboard[0][3] == 'X' && gameboard[1][3] == 'X' && gameboard[2][3] == 'X' && gameboard[3][3] == 'X') ||
        (gameboard[0][0] == 'X' && gameboard[1][1] == 'X' && gameboard[2][2] == 'X' && gameboard[3][3] == 'X') ||
        (gameboard[0][3] == 'X' && gameboard[1][2] == 'X' && gameboard[2][2] == 'X' && gameboard[3][0] == 'X'))
    {
        return true;

    }
    return false;

}

bool playerDraw(char gameboard[4][4])
{
    if ((gameboard[0][0] == ('X'|| 'O') && gameboard[0][1] == ('X' || 'O') && gameboard[0][2] == ('X' || 'O') && gameboard[0][3] == ('X' || 'O') &&
        gameboard[1][0] == ('X' || 'O') && gameboard[1][1] == ('X' || 'O') && gameboard[1][2] == ('X' || 'O') && gameboard[1][3] == ('X' || 'O') &&
        gameboard[2][0] == ('X' || 'O') && gameboard[2][1] == ('X' || 'O') && gameboard[2][2] == ('X' || 'O') && gameboard[2][3] == ('X' || 'O') &&
        gameboard[3][0] == ('X' || 'O') && gameboard[3][1] == ('X' || 'O') && gameboard[3][2] == ('X' || 'O') && gameboard[3][3] == ('X' || 'O')))
    {
        return true;
    }
    return false;
}

void chessMove(char gameboard[4][4])
{
    cout << "before: \n";

    printboard(gameboard);  
    gameboard[0][0] = gameboard[0][1];
    gameboard[0][1] = gameboard[0][2];
    gameboard[0][2] = gameboard[0][3];
    gameboard[0][3] = gameboard[1][3];
    gameboard[1][3] = gameboard[2][3];
    gameboard[2][3] = gameboard[3][3];   
    gameboard[3][3] = gameboard[3][2];
  
    gameboard[3][2] = gameboard[3][1];
    gameboard[3][1] = gameboard[3][0];
    gameboard[3][0] = gameboard[2][0];
    gameboard[2][0] = gameboard[1][0];
    gameboard[1][0] = gameboard[0][0];

    gameboard[1][1] = gameboard[1][2];
    gameboard[1][2] = gameboard[2][2];
    gameboard[2][2] = gameboard[2][1];
    gameboard[2][1] = gameboard[1][1];



    cout << "Move: \n";
    printboard(gameboard);

}

bool isGameEnd(char gameboard[4][4])
{
    if (playerAwin(gameboard))
    {
        printboard(gameboard);
        cout << "Player 1 win !!!\n";
        return true;
    }
    else if (playerBwin(gameboard))
    {
        printboard(gameboard);
        cout << "Player 2 win !!!\n";
        return true;
    }
    else if (playerDraw(gameboard))
    {
        printboard(gameboard);
        cout << "The game is draw !!!\n";
        return true;
    }

}

void playerTurn(char gameboard[4][4],int playerNumber,char chessType)
{
    int xA;
    int yA;

    cout << "Player " << playerNumber << " 's turn\n";
    do {
        cout << "Please input row of your chess : \n";
        cin >> xA;
    } while (xA < 0 || xA >3);

    do {
        cout << "Please input col of your chess: \n";
        cin >> yA;
    } while (yA < 0 || yA >3);

    switch (xA)
    {
    case 0:
        if (yA == 0)
        {
            if (gameboard[0][0] !=chessType)
            {
                gameboard[0][0] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard,playerNumber,chessType);
            }
        }
        else if (yA == 1)
        {
            if (gameboard[1][0] != chessType)
            {
                gameboard[1][0] = chessType;
                chessMove(gameboard);


            }
            else
            {
                repeatLocation();
                playerTurn(gameboard,playerNumber,chessType);
            }

        }
        else if (yA == 2)
        {
            if (gameboard[2][0] != chessType)
            {
                gameboard[2][0] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }

        }
        else if (yA == 3)
        {
            if (gameboard[3][0] != chessType)
            {
                gameboard[3][0] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        break;

    case 1:
        if (yA == 0)
        {
            if (gameboard[0][1] != chessType)
            {

                gameboard[0][1] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 1)
        {
            if (gameboard[1][1] != chessType)
            {
                gameboard[1][1] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 2)
        {
            if (gameboard[2][1] != chessType)
            {
                gameboard[2][1] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 3)
        {
            if (gameboard[3][1] != chessType)
            {
                gameboard[3][1] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        break;
    case 2:
        if (yA == 0)
        {
            if (gameboard[0][2] != chessType)
            {
                gameboard[0][2] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 1)
        {
            if (gameboard[1][2] != chessType)
            {
                gameboard[1][2] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 2)
        {
            if (gameboard[2][2] != chessType)
            {
                gameboard[2][2] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 3)
        {
            if (gameboard[3][2] != chessType)
            {
                gameboard[3][2] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        break;
    case 3:
        if (yA == 0)
        {
            if (gameboard[0][3] != chessType)
            {
                gameboard[0][3] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 1)
        {
            if (gameboard[1][3] != chessType)
            {
                gameboard[1][3] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 2)
        {
            if (gameboard[2][3] != chessType)
            {
                gameboard[2][3] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        else if (yA == 3)
        {
            if (gameboard[3][3] != chessType)
            {
                gameboard[3][3] = chessType;
                chessMove(gameboard);

            }
            else
            {
                repeatLocation();
                playerTurn(gameboard, playerNumber, chessType);
            }
        }
        break;
    }
}

int main()
{
    char chessO = 'O';
    char chessX = 'X';
    
    cout << "The game is started\n";

    printboard(gameboard);

    while (true)
    {
        playerTurn(gameboard,1,chessO);

        if (isGameEnd(gameboard))
        {
            break;
        }

        playerTurn(gameboard,2,chessX);
        if (isGameEnd(gameboard))
        {
            break;
        }

    }
    return 0;
}
