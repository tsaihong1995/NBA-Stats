import SwiftUI

struct PagerView<Content: View>: View {
    
    @State var barOffset: CGFloat = 0
    @State var showCapsule = false
    
    let pageCount: Int
    @Binding var currentIndex: Int
    let content: Content
    @State var test: CGFloat = 0
    
    @GestureState private var translation: CGFloat = 0
    
    init(pageCount: Int, currentIndex: Binding<Int>, @ViewBuilder content: () -> Content) {
        self.pageCount = pageCount
        self._currentIndex = currentIndex
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            
            
            HStack(spacing: 0) {
                
                self.content.frame(width: geometry.size.width)
            }
            .ignoresSafeArea()
            .frame(width: geometry.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.currentIndex) * geometry.size.width)
            .offset(x: self.translation)
            .animation(.interactiveSpring())
            .gesture(
                DragGesture().updating(self.$translation) { value, state, _ in
                    state = value.translation.width
                }.onEnded { value in
                    let offset = value.translation.width / geometry.size.width
                    let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                    self.currentIndex = min(max(Int(newIndex), 0), self.pageCount - 1)
                    self.barOffset = geometry.size.width * CGFloat(currentIndex)
                }
            )
            .overlay(TabBar(currentIndex: $currentIndex, offset: $barOffset,showCapsule: $showCapsule)
                     ,alignment: .top)
            .overlay(
                
                // Enlarge Capsule Button...
                Button(action: {
                    withAnimation{showCapsule.toggle()}
                }, label: {
                    
                    Image(systemName: "fiberchannel")
                        .font(.title2)
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .clipShape(Circle())
                })
                .padding()
                
                ,alignment: .bottomTrailing
            )
            
            
            
        }
        
    }
    
    
    
    
}

struct TestContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        PagerView(pageCount: 3, currentIndex: $currentPage) {
            Color.yellow
            Color.red
            Color.gray
        }
    }
    
    var hello: some View {
        VStack{
            Text("123")
            Spacer()
        }
        
    }
}

struct TestContentView_Previews: PreviewProvider {
    static var previews: some View {
        TestContentView()
    }
}

