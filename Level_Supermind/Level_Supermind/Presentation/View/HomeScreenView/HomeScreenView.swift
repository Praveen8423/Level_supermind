//
//  HomeScreenView.swift
//  Level_Supermind
//
//  Created by Praveen Sehgal on 28/02/2025.
//

import SwiftUI

struct HomeScreenView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isMoreOptions = false
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    Image("backgroundImage")
                        .resizable()
                        .frame(width: Constants.screenSize.width, height: Constants.screenSize.width * 0.6)
                }
                .frame(width: Constants.screenSize.width, height: Constants.screenSize.width * 0.6)
                .overlay {
                    VStack {
                        Spacer().frame(height: Constants.screenSize.width * 0.15)
                        HStack {
                            Spacer().frame(width: Constants.screenSize.width * 0.05)
                            HStack {
                                Text("2")
                                    .font(.system(size: 17, weight: .light))
                                    .foregroundColor(.white)
                                Image("Group")
                                    .resizable()
                                    .frame(width: Constants.screenSize.width * 0.05, height: Constants.screenSize.width * 0.05)
                            }
                            .frame(width: Constants.screenSize.width * 0.15, height: Constants.screenSize.width * 0.09)
                            .background(RoundedRectangle(cornerRadius: 16).fill(Color.black.opacity(0.7)))
                            Spacer().frame(width: Constants.screenSize.width * 0.05)
                            HStack {
                                Text("Rank 5")
                                    .font(.system(size: 17, weight: .light))
                                    .foregroundColor(.white)
                                Image("Gold")
                                    .resizable()
                                    .frame(width: Constants.screenSize.width * 0.05, height: Constants.screenSize.width * 0.05)
                            }
                            .frame(width: Constants.screenSize.width * 0.28, height: Constants.screenSize.width * 0.09)
                            .background(RoundedRectangle(cornerRadius: 16).fill(Color.black.opacity(0.7)))
                            Spacer()
                            HStack {
                                Image("Gift")
                                    .resizable()
                                    .frame(width: Constants.screenSize.width * 0.06, height: Constants.screenSize.width * 0.06)
                            }
                            .frame(width: Constants.screenSize.width * 0.1, height: Constants.screenSize.width * 0.1)
                            .background(RoundedRectangle(cornerRadius: Constants.screenSize.width * 0.05).fill(Color.black.opacity(0.7)))
                            Spacer().frame(width: Constants.screenSize.width * 0.05)
                        }
                        Spacer()
                        HStack {
                            Spacer().frame(width: Constants.screenSize.width * 0.05)
                            Text("Get Started")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                        }
//                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                    }
                    .frame(width: Constants.screenSize.width, height: Constants.screenSize.width * 0.6)
                }
                Spacer().frame(height: Constants.screenSize.width * 0.02)
                ScrollView(.vertical, showsIndicators: false) {
                    Spacer().frame(height: Constants.screenSize.width * 0.02)
                    HStack {
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                        VStack {
                            Spacer().frame(height: Constants.screenSize.width * 0.02)
                            HStack {
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                VStack {
                                    HStack {
                                        Text("Meditation Series")
                                            .font(.system(size: 12, weight: .light))
                                            .foregroundColor(.purple)
                                        Spacer()
                                    }
                                    Spacer().frame(height: Constants.screenSize.width * 0.02)
                                    HStack {
                                        Text("Manage your emotions")
                                            .font(.system(size: 20, weight: .bold))
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                    Spacer().frame(height: Constants.screenSize.width * 0.02)
                                    HStack {
                                        Image("cardIcon")
                                            .resizable()
                                            .frame(width: Constants.screenSize.width * 0.03, height: Constants.screenSize.width * 0.03)
                                        Text("9")
                                            .font(.system(size: 12, weight: .light))
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                    Spacer().frame(height: Constants.screenSize.width * 0.02)
                                    HStack {
                                        Text("Ranveer Allahbadia")
                                            .font(.system(size: 12, weight: .light))
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }
                            Spacer().frame(height: Constants.screenSize.width * 0.02)
                        }
                        .frame(width: Constants.screenSize.width - 32)
                        .background(RoundedRectangle(cornerRadius: 15).stroke(Color.purple, lineWidth: 2))
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                    }
                    Spacer().frame(height: Constants.screenSize.width * 0.05)
                    HStack {
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                        Text("Explore")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        WidgetGridView(img: "self_improvement", txt: "Meditation")
                        WidgetGridView(img: "sports_gymnastics", txt: "Workout")
                        WidgetGridView(img: "Sleep", txt: "Sleep")
                        WidgetGridView(img: (isMoreOptions ? "expand" : "More"), txt: (isMoreOptions ? "Close" : "More"))
                            .onTapGesture {
                                isMoreOptions.toggle()
                            }
                    }
                    .frame(width: Constants.screenSize.width - 32)
                    if isMoreOptions {
                        Spacer().frame(height: Constants.screenSize.width * 0.05)
                        HStack {
                            WidgetGridView(img: "lotus", txt: "Mantra")
                            WidgetGridView(img: "events", txt: "Events")
                            WidgetGridView(img: "courses", txt: "Courses")
                            WidgetGridView(img: "UsersThree", txt: "Community")
                                .onTapGesture {
                                    isMoreOptions.toggle()
                                }
                        }
                        .frame(width: Constants.screenSize.width - 32)
                        Spacer().frame(height: Constants.screenSize.width * 0.05)
                        HStack {
                            WidgetGridView(img: "ClockCountdown", txt: "Timer")
                            WidgetGridView(img: "FlowerTulip", txt: "Affirmation")
                            WidgetGridView(img: "MusicNotesSimple", txt: "Music")
                            WidgetGridView(img: "Notebook", txt: "Journal")
                                .onTapGesture {
                                    isMoreOptions.toggle()
                                }
                        }
                        .frame(width: Constants.screenSize.width - 32)
                        Spacer().frame(height: Constants.screenSize.width * 0.05)
                        HStack {
                            Text("Edit Shortcuts")
                                .font(.system(size: 12, weight: .light))
                                .foregroundColor(.purple)
                        }
                        .frame(width: Constants.screenSize.width - 32)
                    }
                    Spacer().frame(height: Constants.screenSize.width * 0.05)
                    HStack {
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                        Text("Recommended For You")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                            }
                        }
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                    }
                    .frame(width: Constants.screenSize.width)
                    Spacer().frame(height: Constants.screenSize.width * 0.05)
                    HStack {
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                        Text("Recent")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                                CardView(img: "Cardhalf")
                                Spacer().frame(width: Constants.screenSize.width * 0.05)
                            }
                        }
                        Spacer().frame(width: Constants.screenSize.width * 0.05)
                    }
                    .frame(width: Constants.screenSize.width)
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct WidgetGridView: View {
    let img: String
    let txt: String
    var body: some View {
        HStack {
            VStack {
                Image(img) // "self_improvement"
                    .resizable()
                    .frame(width: (img == "More" || img == "expand" ? Constants.screenSize.width * 0.05 : Constants.screenSize.width * 0.07), height: (img == "More" || img == "expand" ? Constants.screenSize.width * 0.03 : Constants.screenSize.width * 0.07))
                    .padding(.top)
                Spacer()
                Text(txt) // "Meditation"
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.bottom)
            }
        }
        .frame(width: (Constants.screenSize.width - 56) / 4, height: (Constants.screenSize.width - 56) / 4)
        .background(RoundedRectangle(cornerRadius: 12).fill(Colors.BackgroundColor.opacity(0.6)))
    }
}

struct CardView: View {
    let img: String
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Image(img) // "self_improvement"
                        .resizable()
                        .frame(width: Constants.screenSize.width * 0.3, height: Constants.screenSize.width * 0.3)
                        .padding(.top)
                    Spacer()
                }
                HStack {
                    Text("Meditation - 10 Mins") // "Meditation"
                        .font(.system(size: 13, weight: .light))
                        .foregroundColor(.green)
                    Spacer()
                }
                HStack {
                    Text("Freedom Series") // "Meditation"
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                }
                HStack {
                    Text("Akhil Aryan") // "Meditation"
                        .font(.system(size: 13, weight: .light))
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    HomeScreenView()
}
