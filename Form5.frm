VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H00FFFF00&
   Caption         =   "ADD NURSE"
   ClientHeight    =   10035
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   8925
   LinkTopic       =   "Form5"
   ScaleHeight     =   10035
   ScaleWidth      =   8925
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text6 
      Height          =   615
      Left            =   2280
      TabIndex        =   13
      Top             =   6360
      Width           =   1935
   End
   Begin VB.TextBox Text5 
      Height          =   615
      Left            =   2280
      TabIndex        =   12
      Top             =   5400
      Width           =   1935
   End
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   2280
      TabIndex        =   11
      Top             =   4440
      Width           =   1935
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   2280
      TabIndex        =   10
      Top             =   3480
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   2280
      TabIndex        =   9
      Top             =   2520
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   2280
      TabIndex        =   8
      Top             =   1560
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SUBMIT"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2520
      TabIndex        =   7
      Top             =   7800
      Width           =   2535
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FFFF&
      Caption         =   "NURSE ID:"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   5
      Left            =   240
      TabIndex        =   6
      Top             =   2520
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FFFF&
      Caption         =   "DATE OF BIRTH:"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   4
      Left            =   240
      TabIndex        =   5
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FFFF&
      Caption         =   "SALARY:"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   3
      Left            =   240
      TabIndex        =   4
      Top             =   4440
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FFFF&
      Caption         =   "EXPERIENCE:"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   2
      Left            =   240
      TabIndex        =   3
      Top             =   5400
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FFFF&
      Caption         =   "CONTACT NO:"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   1
      Left            =   240
      TabIndex        =   2
      Top             =   6360
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FFFF&
      Caption         =   "NAME:"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080FFFF&
      Caption         =   "           ADD NURSE"
      BeginProperty Font 
         Name            =   "Elephant"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1680
      TabIndex        =   0
      Top             =   360
      Width           =   5055
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim conn As ADODB.Connection
Dim rs As ADODB.Recordset

Set conn = New ADODB.Connection
Set rs = New ADODB.Recordset
 conn.Open ("Provider=MSDAORA.1;Password=Harshitha$99;User ID=system;Persist Security Info=True")
      
        rs.Open "insert into nurse values('" & Text1.Text & "','" & Text2.Text & "','" & Text3.Text & "','" & Text4.Text & "','" & Text5.Text & "','" & Text6.Text & "')", conn
        MsgBox "NURSE added successfully"
Form2.Show
Form5.Hide
conn.Close
End Sub

