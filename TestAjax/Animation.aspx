<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Animation.aspx.cs" Inherits="TestAjax.Animation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Message {
            width: 250px;
            padding: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Panel ID="Message" runat="server">
                Pay attention to me!
            </asp:Panel>
            <asp:LinkButton ID="lnkYellowFade" OnClientClick="return false;" runat="server">Play Animation</asp:LinkButton>
            <cc1:AnimationExtender ID="AnimationExtender1" TargetControlID="lnkYellowFade" runat="server">
                <Animations>
                    <OnClick>
                        <Sequence>
                            <Color 
                                AnimationTarget="Message" 
                                Duration="2" 
                                Property="style" 
                                PropertyKey="backgroundColor"
                                StartValue="#FFFF66" 
                                EndValue="#FFFFFF" /> 
                        </Sequence>
                    </OnClick>
                </Animations>
            </cc1:AnimationExtender>

            <%-- l  duration：动画效果的时间间隔。
                l  Fps：帧/秒的显示速度。
                l  maximumOpacity：最大透明度。
                l  minimumOpacity：最小透明度。--%>

            <asp:Panel ID="Panel1" runat="server" BackColor="#E0E0E0" Height="104px" Width="249px">Animation淡入淡出</asp:Panel>
            <cc1:AnimationExtender ID="AnimationExtender2" runat="server" TargetControlID="Panel1">
                <Animations>
                    <OnMouseOver>
                        <FadeIn    duration="2"  Fps="10" maximumOpacity="0.9"  minimumOpacity="0.2" />
                    </OnMouseOver>
                    <OnMouseOut > 
                        <FadeOut  duration="2"   Fps="10" maximumOpacity="0.8"  minimumOpacity="0.2" />
                    </OnMouseOut>
                </Animations>
            </cc1:AnimationExtender>

            <%-- l  duration：动画效果的时间间隔。
                 l  Fps：帧/秒的显示速度。
                 l  width：变化后的宽度。
                 l  height：变化后的高度。
                 l  unit：高度和宽度的单位，通常为“px”。--%>

            <asp:Panel ID="Panel2" runat="server" BackColor="Lavender" Height="121px" Width="200px">Animation可伸缩</asp:Panel>
            <cc1:AnimationExtender ID="AnimationExtender3" runat="server" TargetControlID="Panel2">

                <Animations>                    
                        <OnClick>
                             <sequence>
                                <Resize  duration="2"   Fps="20" width="100" height="100"  unit="px" />
                                <Resize  duration="2"   Fps="20" width="200" height="121"  unit="px" />
                             </sequence>
                        </OnClick>                   
                </Animations>

            </cc1:AnimationExtender>

            <%--EnableAction用来设置控件为不可用状态，由于“Disabled”属性为HTML控件所有，所以在使用此行为时，目标控件应该为HTML控件--%>
            <%--<input id="btnEnabled" type="button" name="name" value="Click Me " runat="server" />--%>
            <asp:Button ID="btnEnable" runat="server" Text="Click Me" OnClientClick="return false" /><br />
            <cc1:AnimationExtender ID="AnimationExtender5" runat="server"
                TargetControlID="btnEnable">
                <Animations>
                        <OnClick>
                           <EnableAction  Enabled="false" />        
                        </OnClick>
                </Animations>
            </cc1:AnimationExtender>

            <asp:Button ID="Button1" runat="server" Text="Click Me" OnClientClick="return false" /><br />
            <cc1:AnimationExtender ID="AnimationExtender6" runat="server"
                TargetControlID="Button1">
                <Animations>
                        <OnClick>
                           <StyleAction AnimationTarget="Button1" Attribute="display" Value="none"/>    
                        </OnClick>
                </Animations>
            </cc1:AnimationExtender>



            <%--Parallel同时进行；sequence顺序进行--%>
            <asp:Panel ID="Panel3" runat="server">
                Pay attention to me!
            </asp:Panel>
            <cc1:AnimationExtender ID="AnimationExtender4" runat="server"
                TargetControlID="Panel3">
                <Animations>
                        <OnClick>
                            <Sequence>
                                <Pulse Duration=".1" />
                                <Parallel Duration=".5" Fps="30">
                                    <FadeOut />
                                    <Scale ScaleFactor="5" Unit="px" Center="true"
                                        ScaleFont="true" FontUnit="pt" />
                                 </Parallel>
                             </Sequence>                     
                        </OnClick>
                </Animations>
            </cc1:AnimationExtender>


           <%-- OpacityAction是控制透明度的行为。其主要包括3个属性：
            duration：动画效果的时间间隔。
            Fps：帧/秒的显示速度。
            opacity：透明度的值。--%>

            <asp:Panel ID="Panel4" runat="server" BackColor="#FFFFC0" Height="104px" Width="249px">Animation Action 透明度</asp:Panel>
             <cc1:AnimationExtender ID="AnimationExtender7" runat="server"
                TargetControlID="Panel4">
                <Animations>
                        <OnClick>
                           <OpacityAction  duration="2"   fps="20"  opacity="0.6"/>  
                        </OnClick>
                </Animations>
            </cc1:AnimationExtender>

        </div>
    </form>
</body>
</html>
