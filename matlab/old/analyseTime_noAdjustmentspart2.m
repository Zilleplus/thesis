clc;
clear;
data = [ 98 101 102 97 100 100 102 100 98 100 101 101 98 100 101 101 98 101 101 100 99 99 100 102 99 102 99 100 97 101 102 99 99 100 101 100 99 100 100 101 98 101 101 99 99 100 101 100 99 101 104 98 97 100 100 103 97 100 101 100 98 102 100 99 100 101 101 97 102 100 101 99 99 100 101 104 97 99 100 100 101 99 100 100 100 99 102 100 98 100 102 100 100 99 101 100 99 99 101 99 106 95 103 100 97 99 103 99 99 100 101 102 97 100 102 100 98 100 100 102 97 101 102 101 98 103 97 100 98 101 101 99 99 101 100 100 100 99 100 101 100 99 103 99 98 101 101 100 99 99 102 97 100 100 102 101 98 99 100 100 100 101 99 100 100 100 101 99 100 101 101 98 99 103 100 101 97 102 100 99 99 101 100 99 99 102 99 100 100 101 100 99 101 99 100 99 100 101 101 99 103 98 101 101 97 101 101 100 99 101 99 100 98 102 100 101 98 101 99 102 98 101 100 100 99 105 97 100 98 100 103 100 96 102 102 100 98 100 101 100 98 102 100 101 99 99 101 100 99 100 103 99 99 99 100 102 100 98 100 102 98 100 102 99 99 100 101 101 99 98 103 99 99 101 101 102 96 100 100 103 96 101 102 99 99 100 101 100 99 100 102 100 99 99 101 100 99 100 101 100 103 96 101 100 99 101 99 100 99 101 100 100 100 100 100 99 99 102 101 101 97 105 99 98 99 104 97 102 98 99 102 98 99 101 102 99 99 100 101 101 100 98 101 100 98 101 101 100 99 100 102 100 98 100 101 102 97 101 101 100 99 99 101 100 99 99 103 100 98 100 101 101 98 100 101 103 97 99 101 100 99 100 101 99 99 100 101 101 98 101 100 100 100 100 101 100 97 102 101 101 103 97 100 101 98 99 101 101 99 99 101 101 100 98 101 102 98 99 101 101 99 99 101 100 99 105 96 101 98 100 101 100 99 101 100 99 99 101 100 101 98 101 100 101 98 101 102 99 99 100 102 95 101 101 101 101 98 100 101 98 100 101 101 98 100 102 100 98 99 102 101 98 100 101 100 104 98 98 102 100 99 99 102 101 98 99 102 98 105 98 99 99 99 101 101 99 100 100 100 102 103 95 102 101 96 100 102 99 99 101 102 99 98 100 103 100 99 99 101 100 100 99 101 100 99 104 96 101 99 100 100 101 99 99 101 101 99 99 102 100 99 100 100 101 98 100 102 99 99 101 104 98 99 98 103 425 89 95 96 96 99 99 99 102 99 97 101 101 99 100 100 101 101 97 101 101 101 97 101 101 99 99 101 101 100 99 100 100 100 100 99 101 101 100 99 101 101 98 100 101 99 100 99 102 99 100 100 100 102 96 102 100 101 98 101 100 101 98 101 101 100 99 99 102 101 99 99 101 99 100 99 102 100 99 100 101 101 97 101 100 100 99 100 101 100 100 99 101 100 99 100 102 104 98 97 100 100 100 100 100 99 100 101 101 98 101 100 100 99 101 99 102 99 99 102 100 101 99 98 101 100 99 101 101 98 100 100 102 98 103 97 101 100 100 99 102 100 99 99 101 99 102 98 102 99 99 101 101 101 98 99 102 100 98 100 101 101 99 99 102 99 99 100 102 99 99 101 101 98 100 100 103 98 99 101 100 100 99 101 101 100 98 100 102 100 98 100 102 100 100 98 101 101 100 99 102 99 101 98 101 100 98 101 101 99 99 100 102 100 98 100 101 100 99 100 101 99 100 100 103 98 99 100 101 100 100 100 100 99 100 100 101 101 99 99 101 100 99 100 102 100 99 99 102 100 100 98 101 100 100 99 101 101 99 99 102 100 99 103 101 97 100 99 100 101 99 100 100 101 98 101 100 102 98 99 101 101 98 100 102 99 99 100 101 102 97 101 100 101 100 98 102 108 99 93 100 101 98 100 102 99 99 99 101 101 99 99 101 101 99 99 101 99 100 101 100 102 98 99 102 101 98 100 100 99 101 99 101 101 101 97 102 101 98 99 102 99 100 100 102 100 98 100 102 99 100 98 102 100 98 100 102 101 99 99 101 100 100 98 101 100 100 99 102 101 98 99 102 101 99 98 101 101 99 99 102 100 99 99 101 101 99 99 101 101 99 99 102 98 100 100 102 115 94 95 97 101 98 98 103 101 100 97 101 100 102 96 102 100 99 99 102 100 100 98 102 100 101 97 102 100 99 99 103 98 102 98 100 99 100 100 102 101 98 99 101 101 99 99 103 99 99 99 103 99 98 100 102 99 101 98 103 100 97 100 103 99 99 99 102 100 98 100 102 21 101 100 100 98 102 104 98 97 101 100 100 99 102 101 97 100 103 97 101 99 101 100 98 100 103 100 100 98 101 100 98 101 103 99 98 100 102 100 100 98 102 100 100 98 101 101 99 99 101 100 99 100 101 100 101 98 101 101 99 99 103 99 98 100 101 100 100 99 101 101 99 105 97 100 97 99 103 99 99 100 103 100 102 95 103 100 97 100 103 100 98 99 102 100 99 99 102 100 98 100 102 99 100 99 101 108 99 96 99 100 98 99 102 99 101 99 101 100 100 97 103 99 101 98 102 100 99 99 100 101 99 100 101 101 99 98 103 101 96 101 102 99 98 101 102 101 98 98 103 100 98 100 102 99 100 99 101 100 99 100 102 100 98 100 101 100 100 99 101 99 100 99 102 101 98 104 96 99 100 100 101 99 99 100 102 98 101 100 100 100 100 99 102 98 100 100 102 98 102 98 105 99 99 100 100 102 101 96 102 100 99 99 101 100 100 99 101 100 102 97 100 101 100 99 102 101 97 99 100 100 101 99 100 99 100 101 101 99 105 97 99 101 99 99 102 99 99 99 102 102 102 96 101 100 98 100 102 101 98 99 101 100 99 100 102 100 98 100 102 100 99 99 101 99 100 105 96 100 103 96 102 100 99 99 102 100 99 99 102 101 98 99 102 100 100 98 102 101 98 99 105 98 98 99 102 420 81 112 90 98 100 98 100 100 101 98 100 102 98 99 101 100 101 98 101 101 100 98 101 103 96 101 100 100 100 99 101 100 100 99 100 101 102 98 99 102 99 99 101 100 99 100 100 101 99 100 101 100 101 98 101 101 99 99 101 101 98 100 100 101 99 99 102 101 100 97 102 101 97 102 99 100 101 99 101 101 98 100 101 99 101 99 100 102 99 99 101 101 98 100 99 102 103 99 99 99 99 100 100 101 99 101 99 100 100 99 101 102 100 98 100 100 100 100 101 100 100 99 100 102 99 99 100 101 99 99 102 100 100 99 101 100 100 98 101 101 101 98 100 100 100 100 100 101 101 98 101 99 102 97 101 101 100 99 100 100 102 98 100 101 99 99 101 100 101 98 100 102 101 99 99 100 100 100 100 101 101 97 102 100 100 98 101 101 101 97 101 101 101 99 100 100 101 99 99 100 101 99 100 100 102 98 100 101 101 98 100 101 100 100 99 100 102 97 101 100 103 96 101 101 99 100 100 100 102 97 102 100 101 98 100 101 100 99 100 101 101 98 100 101 99 100 100 101 100 98 101 101 101 99 99 101 99 100 100 102 98 99 107 97 100 98 100 99 101 101 99 102 101 98 99 101 99 100 99 102 99 99 100 101 102 98 100 101 100 98 101 101 101 98 99 102 111 97 94 99 100 99 99 101 100 99 100 101 101 99 98 101 102 98 99 102 102 97 99 102 99 101 98 101 101 99 99 102 100 97 101 102 98 101 100 101 102 96 100 102 102 100 95 102 99 100 100 100 99 99 102 100 100 99 101 99 99 101 101 100 99 100 100 100 99 102 103 98 100 99 99 100 101 100 99 102 99 99 101 100 101 97 102 100 99 100 100 101 100 99 101 103 100 97 100 101 100 102 98 100 101 98 100 102 101 98 99 100 101 99 100 101 100 99 100 100 104 95 101 100 101 99 100 100 100 101 99 100 99 105 99 98 100 100 99 101 101 97 101 102 98 105 95 102 99 99 99 101 101 99 99 102 100 99 99 102 101 99 99 101 101 97 101 102 100 99 103 98 100 97 100 102 101 98 100 100 101 99 100 100 100 99 100 101 100 101 98 101 100 99 100 104 99 97 100 101 105 96 99 100 100 99 100 103 100 98 99 102 100 98 100 102 98 100 100 102 103 96 99 102 100 98 100 102 98 100 100 101 100 101 99 100 100 100 99 102 99 99 100 101 99 105 96 101 101 97 100 102 100 99 99 102 100 98 100 101 101 98 100 101 101 98 100 103 99 98 102 101 99 97 102 102 99 98 100 101 100 101 98 100 101 99 100 101 100 99 100 101 100 100 99 103 100 98 99 102 100 99 99 100 99 102 99 102 102 96 100 101 101 98 101 100 101 98 100 101 103 96 99 100 100 99 101 100 100 100 100 101 98 100 101 101 99 100 101 100 99 100 101 100 98 102 100 100 99 100 101 99 100 100 100 100 100 99 101 100 100 101 99 100 101 99 101 100 99 99 103 100 101 97 101 102 100 97 101 100 102 98 100 101 101 96 102 101 101 97 101 102 100 98 100 103 99 100 98 101 108 97 98 98 102 97 101 101 99 102 96 102 100 98 100 102 101 98 99 102 104  ];
% load with 4 threads
dataWithLoad = [ 98 99 96 111 94 94 119 96 92 93 117 94 92 105 92 117 93 91 108 94 105 93 117 92 91 107 92 117 92 92 117 94 95 93 118 92 92 106 92 107 93 118 95 92 95 117 94 92 104 93 115 94 94 104 92 116 93 93 106 92 118 94 91 105 92 116 96 92 104 93 105 97 12711 102 95 94 95 122 95 93 93 106 92 120 93 94 92 117 92 90 118 96 92 94 115 92 93 120 94 91 95 115 92 94 118 93 93 96 115 96 92 96 114 92 94 117 94 93 104 94 117 93 92 104 94 117 91 93 106 93 118 91 93 105 92 115 95 93 105 93 116 92 91 13078 124 127 94 100 95 94 94 97 100 107 94 98 129 91 93 94 94 98 118 98 94 93 96 117 95 92 95 116 94 92 106 94 118 94 92 97 105 92 117 93 94 96 114 93 94 116 95 93 94 116 93 93 118 94 92 95 115 93 92 120 93 92 96 117 93 93 106 94 105 93 106 95 107 92 104 95 12416 102 100 96 94 92 112 93 95 121 98 94 94 92 121 94 93 92 117 96 92 98 116 95 91 96 117 94 92 98 114 96 91 107 92 105 96 105 93 117 93 93 96 117 94 94 95 117 92 94 106 93 106 93 116 96 93 95 119 94 93 95 117 96 92 94 116 97 92 95 106 94 12831 100 91 96 93 92 98 121 96 93 93 96 117 93 92 98 115 96 94 95 117 94 93 95 117 94 95 94 117 93 92 105 92 117 93 93 107 94 104 96 105 92 106 95 116 93 94 96 115 92 95 108 92 105 95 107 93 104 96 105 94 105 96 107 92 106 94 108 92 106 94 105 94 12817 103 95 95 93 97 123 97 94 91 93 121 93 92 96 118 94 92 96 119 94 91 95 117 95 92 105 93 108 95 97 118 93 92 97 108 92 106 94 107 92 106 94 107 92 119 93 94 94 115 94 92 117 97 93 93 118 94 92 96 120 91 94 94 117 92 93 106 92 13294 102 98 94 94 95 95 94 92 93 92 94 88 92 92 91 124 94 92 95 95 119 95 95 91 106 94 119 93 93 93 117 95 95 93 118 96 93 95 116 95 93 96 114 93 95 107 94 96 114 93 95 106 93 118 92 92 99 115 93 92 108 92 106 93 117 94 95 94 117 93 94 95 117 91 94 107 93 105 94 12111 100 94 97 110 93 95 120 94 94 93 107 91 120 94 93 92 122 93 92 92 120 93 94 97 116 93 94 96 116 93 92 107 94 98 115 94 92 106 93 106 94 106 93 117 93 93 97 114 95 91 118 96 92 93 116 92 92 107 94 117 92 94 104 93 119 93 94 93 118 93 93 104 95 104 96 104 94 12316 103 96 95 94 97 107 94 97 120 96 93 92 107 94 106 92 118 93 92 107 93 104 93 117 96 93 95 116 94 94 96 116 94 94 96 114 97 92 94 118 94 95 94 115 93 94 106 94 106 95 118 96 93 94 107 92 105 95 107 93 105 94 118 94 90 97 117 96 94 93 119 96 92 93 12694 106 96 93 95 93 95 94 92 93 92 93 87 94 92 93 109 92 106 95 97 117 94 93 97 104 96 107 92 106 94 106 94 118 93 95 93 120 95 94 94 104 93 118 96 93 93 118 95 92 96 116 96 92 95 115 96 93 95 114 93 93 120 93 93 97 117 93 96 93 107 93 105 95 105 94 117 93 94 95 116 93 93 107 93 106 95 107 93 105 93 11011 101 95 93 108 94 105 93 119 96 93 92 119 94 93 93 117 94 94 96 114 94 92 105 94 116 93 92 119 95 92 94 117 95 92 95 117 95 93 95 117 94 92 95 116 93 94 118 92 92 99 114 94 93 105 93 107 92 107 93 122 93 92 92 117 93 92 106 93 118 96 92 93 12815 98 96 93 107 95 98 118 94 92 94 119 93 92 97 117 95 92 97 116 93 93 98 114 92 93 107 91 118 92 91 120 94 94 93 118 96 92 94 117 96 93 92 117 95 92 105 92 117 94 94 95 116 93 93 106 91 121 93 93 95 117 94 92 96 117 93 92 108 93 106 94 107 92 106 93 12600 96 127 98 94 91 93 122 99 93 94 94 106 92 119 95 91 96 116 95 93 95 118 94 92 97 116 96 92 94 116 96 92 98 117 93 92 105 93 105 96 106 93 107 94 105 94 105 96 106 92 118 94 94 93 118 93 92 106 93 105 94 116 93 93 105 92 13315 102 95 95 94 109 97 95 108 93 104 93 107 96 104 95 105 95 106 93 109 93 106 93 106 94 106 94 105 94 106 93 119 95 92 93 116 94 95 95 117 93 94 106 93 104 95 118 93 92 18 116 94 94 95 116 91 95 106 93 120 92 93 95 116 96 93 95 115 93 92 118 94 93 95 117 93 93 107 93 105 94 105 94 105 97 106 94 104 94 108 92 108 93 106 93 106 93 13021 113 97 91 93 96 92 96 124 96 93 94 94 110 93 97 117 96 93 95 118 95 94 93 107 93 106 93 105 96 116 93 92 106 92 109 93 106 93 107 92 117 94 94 94 119 92 92 107 93 104 93 117 93 95 95 118 95 93 95 119 98 94 92 105 95 97 113 93 96 107 92 108 93 104 95 12592 103 96 93 94 96 94 93 91 92 94 93 86 93 94 94 123 97 94 93 94 107 93 106 93 119 92 94 95 118 93 93 94 117 91 94 119 95 92 95 117 93 96 93 107 95 107 94 97 116 94 92 107 93 105 94 106 94 107 93 106 92 119 92 92 106 93 106 94 106 94 116 96 92 95 116 93 92 106 92 12112 99 95 94 108 97 99 106 95 98 104 94 119 94 93 94 118 93 94 96 117 96 93 92 120 97 95 95 93 118 92 94 96 117 93 91 106 95 105 95 115 93 95 94 116 94 92 120 94 91 94 116 97 93 94 121 93 93 93 119 95 90 97 117 93 94 96 119 93 91 97 117 93 93 96 113 95 94 107 93 103 96 11914 101 95 95 96 105 96 97 116 95 93 95 117 93 95 95 115 92 95 105 93 119 93 93 95 113 94 93 118 94 93 97 116 93 93 99 115 93 92 108 92 103 94 119 94 91 97 116 93 93 106 93 104 95 115 94 91 118 93 91 104 94 107 93 116 92 93 107 94 104 92 13097 104 96 93 94 93 96 92 92 93 93 93 90 92 93 91 124 95 95 93 92 121 95 94 92 106 93 117 96 93 93 118 96 92 94 118 95 93 94 118 97 92 93 120 94 92 94 115 96 92 96 115 91 95 121 91 93 95 115 97 93 98 116 92 91 107 93 107 93 105 95 106 92 106 95 117 94 92 96 12213 100 94 94 109 95 96 120 93 93 93 120 93 93 96 106 92 118 94 94 93 120 93 92 95 118 94 94 95 118 91 95 95 115 92 94 108 93 107 94 106 93 107 93 106 93 106 93 118 92 93 106 91 118 93 93 104 93 118 95 93 92 119 96 93 95 118 94 92 94 13115 102 95 95 94 110 94 98 105 95 104 93 119 96 92 92 120 96 93 92 118 95 94 92 119 95 93 94 117 93 94 96 115 94 95 96 116 92 95 97 114 92 94 121 93 92 94 116 95 92 95 115 96 93 105 94 105 95 118 95 94 92 120 93 92 96 117 94 93 95 117 94 91 105 94 106 93 12492 104 97 94 96 95 96 94 93 92 93 93 93 86 94 92 97 120 96 96 92 97 106 93 105 96 108 93 96 116 92 93 118 93 93 96 116 93 92 106 93 117 93 92 105 94 105 92 118 92 93 105 93 118 92 92 105 93 121 93 91 94 120 93 92 96 115 93 92 118 94 93 95 117 93 94 105 94 106 93 105 95 104 96 105 95 11510 100 95 94 111 95 95 107 94 105 93 121 94 93 93 105 92 119 96 93 93 118 92 92 105 94 118 93 93 95 117 95 93 97 118 92 94 94 119 91 93 104 97 94 115 92 95 114 92 95 107 93 116 93 92 98 114 94 94 107 92 106 94 105 94 119 93 92 96 115 93 92 117 93 92 104 94 12421 110 92 97 92 92 94 124 92 94 94 108 93 96 114 95 93 105 93 118 94 92 99 117 92 91 105 94 107 92 107 92 117 92 94 106 92 106 93 116 93 93 105 93 120 94 93 93 117 94 94 94 118 92 94 96 116 93 94 106 92 108 92 120 94 92 94 118 94 92 95 13126 99 100 94 97 92 93 111 95 95 107 92 107 94 107 93 107 92 107 92 121 94 93 94 106 94 106 93 116 94 95 94 119 92 93 95 117 94 93 108 93 104 92 118 94 94 95 117 94 92 96 116 92 93 118 93 91 105 93 116 94 92 106 92 117 93 91 105 93 118 92 92 105 95 107 91 118 92 90 107 94 118 94 92 97 11509 99 95 96 120 97 94 92 96 118 94 93 96 118 93 93 96 117 93 92 106 94 104 93 107 94 106 94 105 94 118 93 91 105 93 117 94 95 94 116 93 93 105 93 115 94 91 107 92 117 92 93 104 96 116 93 93 96 116 94 93 105 92 117 91 95 108 94 97 13220 102 97 96 93 94 100 109 94 93 122 93 95 93 106 92 106 93 118 94 93 95 117 94 93 97 118 93 93 95 118 93 93 98 114 94 93 105 93 106 95 104 96 117 93 92 98 114 94 93 105 92 117  ];

data_mean = mean(data);
dataWithLoad_mean = mean(dataWithLoad);

% calculate the variance from data:
size = size(data);
N=size(2);
data_variance=0;
for i=1:N
    data_variance =+ ( data(N) + (mean(data) - data(N) ) )^2;
end;
data_variance = data_variance/N;

% calculate the variance from data with load (stress -c 6):
clear size;
size = size(dataWithLoad);
N=size(2);
dataWithLoad_variance=0;
for i=1:N
    dataWithLoad_variance =+ ( dataWithLoad(N) + (mean(dataWithLoad) - data(N) ) )^2;
end;
dataWithLoad_variance = dataWithLoad_variance/N;

figure(1);
subplot(2,1,1);
plot(data);title('samples in function of time without load idle OS');
subplot(2,1,2);
xRange = 70:130;  
[counts, bins] = hist(data,xRange);
plot(bins,counts);title('relative frequency of above samples');

% without extrema
data(data > 400) = [];
data(data < 30) = [];

figure(2);title('without load and without extrma');
subplot(2,1,1);
plot(data);title('samples in function of time without load idle OS');
subplot(2,1,2);
xRange = 70:130;  
[counts, bins] = hist(data,xRange);
plot(bins,counts);title('relative frequency of above samples');

%with load
figure(3);
subplot(2,1,1);
semilogy(dataWithLoad);
subplot(2,1,2);
[counts, bins] = hist(dataWithLoad);
plot(bins,counts);
